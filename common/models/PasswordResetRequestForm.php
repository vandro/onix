<?php
namespace common\models;

use common\models\User;
use kartik\base\Config;
use yii\base\Model;
use backend\models\Configuration;
use yii\base\View;
use yii\helpers\VarDumper;

/**
 * Password reset request form
 */
class PasswordResetRequestForm extends Model
{
    public $email;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['email', 'filter', 'filter' => 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            [
                'email',
                'exist',
                'targetClass' => '\common\models\User',
                'filter'      => ['status' => User::STATUS_ACTIVE],
                'message'     => 'There is no user with such email.'
            ],
        ];
    }

    /**
     * Sends an email with a link, for resetting the password.
     *
     * @return boolean whether the email was send
     */
    public function sendEmail()
    {
        /* @var $user User */
        $user = User::findOne([
            'status' => User::STATUS_ACTIVE,
            'email'  => $this->email,
        ]);

        if ($user) {
            if ( ! User::isPasswordResetTokenValid($user->password_reset_token)) {
                $user->generatePasswordResetToken();
            }

            if ($user->save()) {

                $email_content = \Yii::$app->controller->renderFile('@common/mail/passwordResetToken-html.php',
                    ['user' => $user]);

                return \Yii::$app->mailer->sendWithTemplate($this->email,
                    \Yii::t('app', 'Password reset for ') . $user->username, $email_content);
            }
        }

        return false;
    }
}
