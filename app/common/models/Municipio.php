<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "municipio".
 *
 * @property integer $code
 * @property string $name
 * @property string $lat
 * @property string $long
 * @property integer $departamento_code
 *
 * @property Barrio[] $barrios
 * @property Departamento $departamentoCode
 */
class Municipio extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'municipio';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'lat', 'long', 'departamento_code'], 'required'],
            [['departamento_code'], 'integer'],
            [['name'], 'string', 'max' => 60],
            [['lat', 'long'], 'string', 'max' => 30],
            [['departamento_code'], 'exist', 'skipOnError' => true, 'targetClass' => Departamento::className(), 'targetAttribute' => ['departamento_code' => 'code']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'code' => 'Code',
            'name' => 'Name',
            'lat' => 'Lat',
            'long' => 'Long',
            'departamento_code' => 'Departamento Code',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBarrios()
    {
        return $this->hasMany(Barrio::className(), ['municipio_code' => 'code']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDepartamentoCode()
    {
        return $this->hasOne(Departamento::className(), ['code' => 'departamento_code']);
    }
}
