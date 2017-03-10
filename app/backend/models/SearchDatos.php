<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Datos;
use yii\helpers\ArrayHelper;
use yii\helpers\VarDumper;

/**
 * SearchDatos represents the model behind the search form about `common\models\Datos`.
 */
class SearchDatos extends Datos
{


	const FIELD_FECHA_VENC_SOAT = 'fecha_venc_soat';
	const FIELD_FECHA_VENC_REV  = 'fecha_vencimiento';
	const FIELD_CUMPLES         = 'advanced_fecha_cumples';
	const FIELD_FECHA_AGENDA    = 'fecha_agenda';
	/**
	 * @var string que indica por cual campo de búsqueda desea hacer el filtro
	 */
	public $advanced_seleccion_campo_busqueda;

	/**
	 * @var string Fecha de cumpleaños
	 */
	public $advanced_fecha_cumples;

	/**
	 * @var string Fecha desde la cual aplica el rango de búsqueda
	 */
	public $advanced_date_from;

	/**
	 * @var string Fecha hasta la cual aplica el rango de búsqueda
	 */
	public $advanced_date_to;

	/**
	 * @inheritdoc
	 */
	public function rules()
	{
		return [
			[['id', 'tipo', 'tipo_u', 'contesto', 'agenda', 'barrio_id'], 'integer'],
			[
				[
					'placa',
					'nombre',
					'apellido',
					'direccion',
					'telefono',
					'celular',
					'fecha_nacimiento',
					'fecha_revision',
					'email',
					'fecha_vencimiento',
					'cedula',
					'fecha_agenda',
					'observacion',
					'cedula_runt',
					'fecha_exp_soat',
					'fecha_vig_soat',
					'fecha_venc_soat',
					'empresa_soat',
					'estado_soat',
					'poliza_soat'
				],
				'safe'
			],
			[
				'advanced_seleccion_campo_busqueda',
				function ($attribute, $params) {
					/**
					 * @var SearchDatos $this
					 */
					$valid_values = [
						self::FIELD_FECHA_AGENDA,
						self::FIELD_CUMPLES,
						self::FIELD_FECHA_VENC_REV,
						self::FIELD_FECHA_VENC_SOAT
					];

					if ( ! in_array($this->advanced_seleccion_campo_busqueda, $valid_values)) {
						$this->addError('advanced_seleccion_campo_busqueda', 'EL valor seleccionado no es válido');
					}
				}
			],
			[['advanced_date_from', 'advanced_date_to'], 'date', 'format' => 'yyyy-mm-dd'],
			['advanced_date_from', 'compare', 'compareAttribute' => 'advanced_date_to', 'operator' => '<='],
			['advanced_date_to', 'compare', 'compareAttribute' => 'advanced_date_from', 'operator' => '>='],
		];
	}

	/**
	 * @inheritdoc
	 */
	public function scenarios()
	{
		// bypass scenarios() implementation in the parent class
		return Model::scenarios();
	}

	public function attributeLabels()
	{
		return ArrayHelper::merge(parent::attributeLabels(), [
			'advanced_seleccion_campo_busqueda' => 'Campo de búsqueda',
			'advanced_date_from'                => 'Fecha desde',
			'advanced_date_to'                  => 'Fecha hasta',
			'advanced_fecha_cumples'            => 'Cumpleaños',
		]);
	}

	public function attributeHints()
	{
		return ArrayHelper::merge(parent::attributeHints(), [
			'tipo'                              => 'Si no elige ningún tipo, el sistema busca con todos los tipos de vehículo',
			'advanced_seleccion_campo_busqueda' => 'Campo sobre el cual se va a hacer la búsqueda'
		]);
	}

	/**
	 * Creates data provider instance with search query applied
	 *
	 * @param array $params
	 *
	 * @return ActiveDataProvider
	 */
	public function search($params)
	{

		/*VarDumper::dump($params, 10, true);
		exit;*/
		$query = Datos::find();

		$dataProvider = new ActiveDataProvider([
			'query' => $query,
		]);

		$this->load($params);

		if ( ! $this->validate()) {
			// uncomment the following line if you do not want to any records when validation fails
			// $query->where('0=1');
			return $dataProvider;
		}

		$query->andFilterWhere([
			'id'                => $this->id,
			'fecha_nacimiento'  => $this->fecha_nacimiento,
			'tipo'              => $this->tipo,
			'fecha_revision'    => $this->fecha_revision,
			'fecha_vencimiento' => $this->fecha_vencimiento,
			'tipo_u'            => $this->tipo_u,
			'contesto'          => $this->contesto,
			'fecha_agenda'      => $this->fecha_agenda,
			'agenda'            => $this->agenda,
			'fecha_exp_soat'    => $this->fecha_exp_soat,
			'fecha_vig_soat'    => $this->fecha_vig_soat,
			'fecha_venc_soat'   => $this->fecha_venc_soat,
			'barrio_id'         => $this->barrio_id,
		]);

		$query->andFilterWhere(['like', 'placa', $this->placa])
		      ->andFilterWhere(['like', 'nombre', $this->nombre])
		      ->andFilterWhere(['like', 'apellido', $this->apellido])
		      ->andFilterWhere(['like', 'direccion', $this->direccion])
		      ->andFilterWhere(['like', 'telefono', $this->telefono])
		      ->andFilterWhere(['like', 'celular', $this->celular])
		      ->andFilterWhere(['like', 'email', $this->email])
		      ->andFilterWhere(['like', 'cedula', $this->cedula])
		      ->andFilterWhere(['like', 'observacion', $this->observacion])
		      ->andFilterWhere(['like', 'cedula_runt', $this->cedula_runt])
		      ->andFilterWhere(['like', 'empresa_soat', $this->empresa_soat])
		      ->andFilterWhere(['like', 'estado_soat', $this->estado_soat])
		      ->andFilterWhere(['like', 'poliza_soat', $this->poliza_soat]);

		// Si el usuario es de ibague solo puede ver info de ibague


		// Si el usuario es de espinal solo puede ver info de espinal


		// Criterios para consulta avanzada
		if ( ! is_null($this->advanced_seleccion_campo_busqueda) && strlen($this->advanced_seleccion_campo_busqueda) > 0) {

			if ($this->advanced_seleccion_campo_busqueda == self::FIELD_FECHA_VENC_SOAT or
			    $this->advanced_seleccion_campo_busqueda == self::FIELD_FECHA_VENC_REV or
			    $this->advanced_seleccion_campo_busqueda == self::FIELD_FECHA_AGENDA
			) {
				$query->andFilterWhere([
					'between',
					$this->advanced_seleccion_campo_busqueda,
					$this->advanced_date_from,
					$this->advanced_date_to
				]);
			}

			if ($this->advanced_seleccion_campo_busqueda == self::FIELD_CUMPLES) {
				/**
				 * Busca personas que cumplan años entre un día y mes específico, se aplica como ejemplo el siguiente query
				 * SELECT * FROM datos WHERE DATE_FORMAT(`fecha_nacimiento`, '%m-%d') BETWEEN DATE_FORMAT(now(), '%m-%d') AND DATE_FORMAT(now() + INTERVAL 10 DAY, '%m-%d') ORDER BY `fecha_nacimiento` ASC limit 0,100
				 */

				$query->andWhere("DATE_FORMAT(`fecha_nacimiento`, '%m-%d') BETWEEN DATE_FORMAT(:advanced_date_from, '%m-%d') AND DATE_FORMAT(:advanced_date_to, '%m-%d')", [
					':advanced_date_from' => $this->advanced_date_from,
					':advanced_date_to'   => $this->advanced_date_to,
				]);
			}
		}

		return $dataProvider;
	}
}
