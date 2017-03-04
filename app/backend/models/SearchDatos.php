<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Datos;

/**
 * SearchDatos represents the model behind the search form about `common\models\Datos`.
 */
class SearchDatos extends Datos
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'tipo', 'tipo_u', 'contesto', 'agenda', 'barrio_id'], 'integer'],
            [['placa', 'nombre', 'apellido', 'direccion', 'telefono', 'celular', 'fecha_nacimiento', 'fecha_revision', 'email', 'fecha_vencimiento', 'cedula', 'fecha_agenda', 'observacion', 'cedula_runt', 'fecha_exp_soat', 'fecha_vig_soat', 'fecha_venc_soat', 'empresa_soat', 'estado_soat', 'poliza_soat'], 'safe'],
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

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Datos::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'fecha_nacimiento' => $this->fecha_nacimiento,
            'tipo' => $this->tipo,
            'fecha_revision' => $this->fecha_revision,
            'fecha_vencimiento' => $this->fecha_vencimiento,
            'tipo_u' => $this->tipo_u,
            'contesto' => $this->contesto,
            'fecha_agenda' => $this->fecha_agenda,
            'agenda' => $this->agenda,
            'fecha_exp_soat' => $this->fecha_exp_soat,
            'fecha_vig_soat' => $this->fecha_vig_soat,
            'fecha_venc_soat' => $this->fecha_venc_soat,
            'barrio_id' => $this->barrio_id,
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

        return $dataProvider;
    }
}
