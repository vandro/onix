<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 5/22/16
 * Time: 10:15 PM
 */

namespace api\modules\v1\models;


use Yii;

/**
 * @inheritdoc
 */
class Configuration extends \common\models\Configuration
{
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id'         => Yii::t('api', 'ID'),
            'site_url'   => Yii::t('api', 'Site Url'),
            'company'    => Yii::t('api', 'Empresa'),
            'email_name' => Yii::t('api', 'Nombre Alias para el email'),
            'host'       => Yii::t('api', 'Servidor SMTP'),
            'encryption' => Yii::t('api', 'Tipo de encriptacion'),
            'username'   => Yii::t('api', 'Email'),
            'password'   => Yii::t('api', 'Contraseña'),
            'port'       => Yii::t('api', 'Puerto'),
            'template'   => Yii::t('api', 'Plantilla de email'),
        ];
    }
}