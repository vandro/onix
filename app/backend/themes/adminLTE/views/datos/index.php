<?php

use yii\helpers\Html;
use yii\grid\GridView;
use kartik\export\ExportMenu;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SearchDatos */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title                   = 'Datos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
				<?= Html::a(Yii::t('back', 'Create') . ' ' . Yii::t('back', 'Datos'), ['create'],
					['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                   aria-expanded="true" aria-controls="collapseOne">
                                    Búsqueda Avanzada
                                </a>
                            </h4>
                        </div>
						<?php
						/**
						 *  Si el formulario de búsqueda avanzada tiene algún dato cargado, se carga abierto, de lo
						 *  contrario, carga cerrado
						 */
						$collapse_in = false;

						if (strlen($searchModel->advanced_seleccion_campo_busqueda) > 0
						    or strlen($searchModel->advanced_date_from) > 0
						    or strlen($searchModel->advanced_date_to) > 0
						    or strlen($searchModel->tipo) > 0
						) {
							$collapse_in = true;
						}
						?>
                        <div id="collapseOne" class="panel-collapse collapse <?= $collapse_in ? 'in' : '' ?>"
                             role="tabpanel"
                             aria-labelledby="headingOne">
                            <div class="panel-body">
								<?= $this->render('_search', ['model' => $searchModel]); ?>
                            </div>
                        </div>
                    </div>
                </div>

				<?php

				$gridColumns = [
					'id',
					'placa',
					'nombre',
					'apellido',
					'direccion',
					'telefono',
					'celular',
					'fecha_nacimiento',
					'tipo',
					'fecha_revision',
					'email:email',
					'fecha_vencimiento',
					'cedula',
					'tipo_u',
					'contesto',
					'fecha_agenda',
					'agenda',
					'observacion',
					'cedula_runt',
					'fecha_exp_soat',
					'fecha_vig_soat',
					'fecha_venc_soat',
					'empresa_soat',
					'estado_soat',
					'poliza_soat',
					'barrio_id'
				];

				\yii\widgets\Pjax::begin();
				// Renders a export dropdown menu
				echo ExportMenu::widget([
					'dataProvider' => $dataProvider,
					'columns'      => $gridColumns
				]);
				echo GridView::widget([
					'dataProvider' => $dataProvider,
					'filterModel'  => $searchModel,
					'columns'      => [
						'id',
						'placa',
						'nombre',
						'apellido',
						'direccion',
						// 'telefono',
						// 'celular',
						// 'tipo',
						'email:email',
						'fecha_nacimiento',
						// 'fecha_revision',
						'fecha_vencimiento',
						'fecha_venc_soat',
						// 'cedula',
						// 'tipo_u',
						// 'contesto',
						// 'fecha_agenda',
						// 'agenda',
						// 'observacion',
						// 'cedula_runt',
						// 'fecha_exp_soat',
						// 'fecha_vig_soat',
						// 'empresa_soat',
						// 'estado_soat',
						// 'poliza_soat',
						// 'barrio_id',

						['class' => 'yii\grid\ActionColumn'],
					],
				]);
				\yii\widgets\Pjax::end();
				?>
            </div>
        </div>
    </div>
</div>