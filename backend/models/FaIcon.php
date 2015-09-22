<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "faIcon".
 *
 * @property integer $id
 * @property string $class
 */
class FaIcon extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'faIcon';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['class'], 'required'],
            [['class'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('back', 'ID'),
            'class' => Yii::t('back', 'Class'),
        ];
    }
}
