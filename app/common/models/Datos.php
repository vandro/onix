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
 * @property integer $contesto_fecha_venc_soat
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
class Datos extends \yii\db\ActiveRecord
{
	/**
	 * @inheritdoc
	 */
	public static function tableName()
	{
		return 'datos';
	}

	/**
	 * @inheritdoc
	 */
	public function rules()
	{
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
			[['tipo', 'tipo_u', 'contesto', 'contesto_fecha_venc_soat', 'agenda', 'barrio_id'], 'integer'],
			[
				['agenda', 'barrio_id', 'tipo', 'tipo_u', 'nombre', 'apellido', 'cedula', 'direccion', 'celular'],
				'required'
			],
			[['email'], 'email'],
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
	public function attributeLabels()
	{
		return [
			'id'                => 'ID',
			'placa'             => 'Placa',
			'nombre'            => 'Nombre',
			'apellido'          => 'Apellido',
			'direccion'         => 'Dirección',
			'telefono'          => 'Teléfono',
			'celular'           => 'Celular',
			'fecha_nacimiento'  => 'Fecha Nacimiento',
			'tipo'              => 'Tipo de Vehículo',
			'fecha_revision'    => 'Fecha Revisión',
			'email'             => 'Email',
			'fecha_vencimiento' => 'Fecha Vencimiento de revisión',
			'cedula'            => 'Cédula',
			'tipo_u'            => 'Tipo de Usuario',
			'contesto'          => '¿Contesto?',
			'fecha_agenda'      => 'Fecha Agenda',
			'agenda'            => 'Agenda',
			'observacion'       => 'Observación',
			'cedula_runt'       => 'Cédula Runt',
			'fecha_exp_soat'    => 'Fecha Expiración de Soat',
			'fecha_vig_soat'    => 'Fecha Vigencia Soat',
			'fecha_venc_soat'   => 'Fecha Vencimiento Soat',
			'empresa_soat'      => 'Empresa Soat',
			'estado_soat'       => 'Estado Soat',
			'poliza_soat'       => 'Póliza Soat',
			'barrio_id'         => 'Barrio',
		];
	}

	public function attributeHints()
	{
		return [
			'id'               => 'ID',
			'placa'            => 'Placa el Automotor',
			'cedula'           => 'Cédula de quien hace el trámite',
			'nombre'           => 'Nombre de quien hace el trámite',
			'apellido'         => 'Apellido de quien hace el trámite',
			'direccion'        => 'Dirección de quien hace el trámite',
			'telefono'         => 'Teléfono de quien hace el trámite',
			'celular'          => 'Celular de quien hace el trámite',
			'fecha_nacimiento' => 'Fecha Nacimiento de quien hace el trámite',
			'email'            => 'Email de quien hace el trámite',

			'tipo' => 'Tipo de Vehículo',

			'fecha_revision'    => 'Fecha en la que se hace la revisión del automotor',
			'fecha_vencimiento' => 'Fecha en la que vence la revisión del automotor',

			'tipo_u' => 'Tipo de Usuario que hace el trámite',

			'contesto'                 => 'Parte comercial: ¿El cliente contesto?',
			'contesto_fecha_venc_soat' => 'Parte comercial: ¿El cliente contesto para vencimiento de Soat?',
			'fecha_agenda'             => 'Parte comercial: si el cliente contesta, la fecha de agendamiento para la nueva revisión',
			'agenda'                   => 'Parte comercial: ¿Se agendó?',
			'observacion'              => 'Parte comercial: Observaciónes del contacto con el cliente',

			'cedula_runt' => 'Cédula Runt',

			'fecha_exp_soat'  => 'Fecha Expiración de Soat',
			'fecha_vig_soat'  => 'Fecha Vigencia Soat',
			'fecha_venc_soat' => 'Fecha Vence Soat',


			'empresa_soat' => 'Empresa Soat',
			'estado_soat'  => 'Estado Soat',
			'poliza_soat'  => 'Póliza Soat',
			'barrio_id'    => 'Barrio',
		];
	}

	/**
	 * @return \yii\db\ActiveQuery
	 */
	public function getBarrio()
	{
		return $this->hasOne(Barrio::className(), ['id' => 'barrio_id']);
	}

	public function getTipo($idx = null)
	{
		$tipos = [
			0 => 'Público',
			1 => 'Particular',
			3 => 'Moto'
		];

		return isset($tipos[ $idx ]) ? $tipos[ $idx ] : 'Otro Tipo';
	}

	public function getTipoU($idx)
	{
		$tipos = [
			0 => 'Propietario',
			1 => 'Conductor'
		];

		return isset($tipos[ $idx ]) ? $tipos[ $idx ] : 'Otro Tipo';
	}

	public function getFullBarrio()
	{
		if (isset($this->barrio)) {
			if (isset($this->barrio->municipioCode)) {
				return $this->barrio->municipioCode->name . ' - ' . $this->barrio->nombre;
			} else {
				return $this->barrio->nombre;
			}
		} else {
			return 'Barrio no indicado';
		}
	}
}
