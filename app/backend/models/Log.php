<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "log".
 *
 * @property integer $id
 * @property integer $level
 * @property string $category
 * @property double $log_time
 * @property string $prefix
 * @property string $message
 */
class Log extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'log';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['level'], 'integer'],
            [['log_time'], 'number'],
            [['prefix', 'message'], 'string'],
            [['category'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('back', 'ID'),
            'level' => Yii::t('back', 'Nivel'),
            'category' => Yii::t('back', 'Categoria'),
            'log_time' => Yii::t('back', 'Hora de registro'),
            'prefix' => Yii::t('back', 'Prefijo'),
            'message' => Yii::t('back', 'Mensaje'),
        ];
    }
}
