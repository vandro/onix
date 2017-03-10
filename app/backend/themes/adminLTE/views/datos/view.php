<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Datos */

$this->title                   = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Datos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
				<?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
				<?= Html::a('Delete', ['delete', 'id' => $model->id], [
					'class' => 'btn btn-danger',
					'data'  => [
						'confirm' => 'Are you sure you want to delete this item?',
						'method'  => 'post',
					],
				]) ?>
            </div>
            <div class="box-body">
				<?= DetailView::widget([
					'model'      => $model,
					'attributes' => [
						'id',
						'placa',
						[
							'attribute' => 'tipo',
							'format'    => 'raw',
							'value'     => $model->getTipo($model->tipo)
						],
						[
							'attribute' => 'tipo_u',
							'format'    => 'raw',
							'value'     => $model->getTipoU($model->tipo_u)
						],
						'cedula',
						'nombre',
						'apellido',
						'direccion',
						[
							'attribute' => 'barrio_id',
							'value'     => $model->getFullBarrio()
						],
						'telefono',
						'celular',
						'email:email',
						'fecha_nacimiento:date',
						'fecha_revision:date',
						'fecha_vencimiento:date',
						'contesto:boolean',
						'fecha_agenda:date',
						'agenda:boolean',
						'observacion',
						// 'cedula_runt',
						// 'fecha_exp_soat:date',
						// 'fecha_vig_soat:date',
						'contesto_fecha_venc_soat:boolean',
						'fecha_venc_soat:date',
						// 'empresa_soat',
						// 'estado_soat',
						// 'poliza_soat',
					],
				]) ?>
            </div>
        </div>
    </div>
</div>