<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "barrio".
 *
 * @property integer $id
 * @property integer $codigo
 * @property string $nombre
 * @property integer $comuna
 * @property integer $municipio_code
 *
 * @property Municipio $municipioCode
 * @property Datos[] $datos
 */
class Barrio extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'barrio';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['codigo', 'comuna', 'municipio_code'], 'integer'],
            [['municipio_code'], 'required'],
            [['nombre'], 'string', 'max' => 150],
            [['municipio_code'], 'exist', 'skipOnError' => true, 'targetClass' => Municipio::className(), 'targetAttribute' => ['municipio_code' => 'code']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'codigo' => 'Codigo',
            'nombre' => 'Nombre',
            'comuna' => 'Comuna',
            'municipio_code' => 'Municipio Code',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMunicipioCode()
    {
        return $this->hasOne(Municipio::className(), ['code' => 'municipio_code']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDatos()
    {
        return $this->hasMany(Datos::className(), ['barrio_id' => 'id']);
    }
}
