<?php
namespace backend\models;

use common\models\User;
use yii\base\InvalidParamException;
use yii\base\Model;
use Yii;

/**
 * Password reset form
 */
class ResetPasswordForm extends Model
{
    public $password;
    public $confirm_password;

    /**
     * @var \common\models\User
     */
    private $_user;


    /**
     * Creates a form model given a token.
     *
     * @param  string $token
     * @param  array  $config name-value pairs that will be used to initialize the object properties
     *
     * @throws \yii\base\InvalidParamException if token is empty or not valid
     */
    public function __construct($token, $config = [])
    {
        if (empty($token) || !is_string($token)) {
            throw new InvalidParamException('El token para restablecer la contraseña es obligatorio.');
        }
        $this->_user = User::findByPasswordResetToken($token);
        if (!$this->_user) {
            throw new InvalidParamException('EL token para restablecer la contraseña no corresponde.');
        }
        parent::__construct($config);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['password', 'confirm_password'], 'required'],
            [['password', 'confirm_password'], 'string', 'min' => 6],
            [
                'confirm_password',
                'compare',
                'compareAttribute' => 'password',
                'message'          => Yii::t( 'back', 'El campo {password} y {confirm_password} deben ser identicos', [
                    'password'         => $this->getAttributeLabel( 'password' ),
                    'confirm_password' => $this->getAttributeLabel( 'confirm_password' )
                ] )
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'password'         => Yii::t( 'back', 'Contraseña' ),
            'confirm_password' => Yii::t( 'back', 'Confirmar Contraseña' ),
        ];
    }

    /**
     * Resets password.
     *
     * @return boolean if password was reset.
     */
    public function resetPassword()
    {
        $user           = $this->_user;
        $user->password = $this->password;
        $user->removePasswordResetToken();

        return $user->save();
    }
}
