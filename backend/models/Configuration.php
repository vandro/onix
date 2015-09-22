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
            [['company', 'email_name', 'host', 'encryption', 'username', 'password', 'port', 'template'], 'required'],
            [['template'], 'string'],
            [['company', 'email_name', 'host', 'username', 'password'], 'string', 'max' => 120],
            [['encryption'], 'string', 'max' => 20],
            [['port'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('back', 'ID'),
            'company' => Yii::t('back', 'Company'),
            'email_name' => Yii::t('back', 'Email Name'),
            'host' => Yii::t('back', 'Host'),
            'encryption' => Yii::t('back', 'Encryption'),
            'username' => Yii::t('back', 'Username'),
            'password' => Yii::t('back', 'Password'),
            'port' => Yii::t('back', 'Port'),
            'template' => Yii::t('back', 'Template'),
        ];
    }
}
