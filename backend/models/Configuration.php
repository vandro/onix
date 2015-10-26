<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "configuration".
 *
 * @property integer $id
 * @property string $company
 * @property string $email_name
 * @property string $host
 * @property string $encryption
 * @property string $username
 * @property string $password
 * @property string $port
 * @property string $template
 */
class Configuration extends \yii\db\ActiveRecord
{
    const EMAIL_CONTENT_TEMPLATE = '__CONTENT__';
    const EMAIL_COMPANY_NAME_TEMPLATE = '__COMPANY_NAME__';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'configuration';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['company', 'template', 'encryption', 'email_name', 'host', 'username', 'password', 'port'], 'required'],
            [['template'], 'string'],
            [['company', 'email_name', 'host', 'username', 'password'], 'string', 'max' => 120],
            [['encryption'], 'string', 'max' => 20],
            [['port'], 'string', 'max' => 45],
            [['encryption', 'email_name', 'host', 'username', 'password', 'port'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Yii::t('back', 'ID'),
            'company'    => Yii::t('back', 'Empresa'),
            'email_name' => Yii::t('back', 'Nombre Alias para el email'),
            'host'       => Yii::t('back', 'Servidor SMTP'),
            'encryption' => Yii::t('back', 'Tipo de encriptacion'),
            'username'   => Yii::t('back', 'Email'),
            'password'   => Yii::t('back', 'Contraseña'),
            'port'       => Yii::t('back', 'Puerto'),
            'template'   => Yii::t('back', 'Plantilla de email'),
        ];
    }
}
