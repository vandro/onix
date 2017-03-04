<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "departamento".
 *
 * @property integer $code
 * @property string $name
 * @property string $lat
 * @property string $long
 *
 * @property Municipio[] $municipios
 */
class Departamento extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'departamento';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'lat', 'long'], 'required'],
            [['name'], 'string', 'max' => 60],
            [['lat', 'long'], 'string', 'max' => 30],
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
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMunicipios()
    {
        return $this->hasMany(Municipio::className(), ['departamento_code' => 'code']);
    }
}
