<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "datos".
 *
 * @property integer $id
 * @property string  $placa
 * @property string  $nombre
 * @property string  $apellido
 * @property string  $direccion
 * @property string  $telefono
 * @property string  $celular
 * @property string  $fecha_nacimiento
 * @property integer $tipo
 * @property string  $fecha_revision
 * @property string  $email
 * @property string  $fecha_vencimiento
 * @property string  $cedula
 * @property integer $tipo_u
 * @property integer $contesto
 * @property string  $fecha_agenda
 * @property integer $agenda
 * @property string  $observacion
 * @property string  $cedula_runt
 * @property string  $fecha_exp_soat
 * @property string  $fecha_vig_soat
 * @property string  $fecha_venc_soat
 * @property string  $empresa_soat
 * @property string  $estado_soat
 * @property string  $poliza_soat
 * @property integer $barrio_id
 *
 * @property Barrio  $barrio
 */
class Datos extends \yii\db\ActiveRecord {
	/**
	 * @inheritdoc
	 */
	public static function tableName() {
		return 'datos';
	}

	/**
	 * @inheritdoc
	 */
	public function rules() {
		return [
			[
				[
					'fecha_nacimiento',
					'fecha_revision',
					'fecha_vencimiento',
					'fecha_agenda',
					'fecha_exp_soat',
					'fecha_vig_soat',
					'fecha_venc_soat'
				],
				'safe'
			],
			[['tipo', 'tipo_u', 'contesto', 'agenda', 'barrio_id'], 'integer'],
			[['agenda', 'barrio_id'], 'required'],
			[['placa'], 'string', 'max' => 10],
			[['nombre', 'apellido', 'observacion', 'empresa_soat'], 'string', 'max' => 100],
			[['direccion'], 'string', 'max' => 150],
			[['telefono', 'celular', 'cedula', 'cedula_runt', 'estado_soat', 'poliza_soat'], 'string', 'max' => 50],
			[['email'], 'string', 'max' => 80],
			[
				['barrio_id'],
				'exist',
				'skipOnError'     => true,
				'targetClass'     => Barrio::className(),
				'targetAttribute' => ['barrio_id' => 'id']
			],
		];
	}

	/**
	 * @inheritdoc
	 */
	public function attributeLabels() {
		return [
			'id'                => 'ID',
			'placa'             => 'Placa',
			'nombre'            => 'Nombre',
			'apellido'          => 'Apellido',
			'direccion'         => 'Dirección',
			'telefono'          => 'Teléfono',
			'celular'           => 'Celular',
			'fecha_nacimiento'  => 'Fecha Nacimiento',
			'tipo'              => 'Tipo',
			'fecha_revision'    => 'Fecha Revisión',
			'email'             => 'Email',
			'fecha_vencimiento' => 'Fecha Vencimiento',
			'cedula'            => 'Cédula',
			'tipo_u'            => 'Tipo U',
			'contesto'          => '¿Contesto?',
			'fecha_agenda'      => 'Fecha Agenda',
			'agenda'            => 'Agenda',
			'observacion'       => 'Observación',
			'cedula_runt'       => 'Cédula Runt',
			'fecha_exp_soat'    => 'Fecha Expiración de Soat',
			'fecha_vig_soat'    => 'Fecha Vigencia Soat',
			'fecha_venc_soat'   => 'Fecha Vence Soat',
			'empresa_soat'      => 'Empresa Soat',
			'estado_soat'       => 'Estado Soat',
			'poliza_soat'       => 'Póliza Soat',
			'barrio_id'         => 'Barrio',
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getBarrio() {
		return $this->hasOne(Barrio::className(), ['id' => 'barrio_id']);
	}
}
