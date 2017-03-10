<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use kartik\date\DatePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\SearchDatos */
/* @var $form yii\widgets\ActiveForm */
?>

    <div class="datos-search">

		<?php $form = ActiveForm::begin([
			'action' => ['index'],
			'method' => 'get',
		]); ?>

        <div class="row">
            <div class="col col-sm-6">
				<?php

				if (Yii::$app->request->getQueryParam('sms')) {
					$data_advanced_seleccion_campo_busqueda = [
						$model::FIELD_FECHA_VENC_SOAT => $model->getAttributeLabel($model::FIELD_FECHA_VENC_SOAT),
						$model::FIELD_FECHA_VENC_REV  => $model->getAttributeLabel($model::FIELD_FECHA_VENC_REV),
					];
				} else {
					$data_advanced_seleccion_campo_busqueda = [
						$model::FIELD_FECHA_VENC_SOAT => $model->getAttributeLabel($model::FIELD_FECHA_VENC_SOAT),
						$model::FIELD_FECHA_VENC_REV  => $model->getAttributeLabel($model::FIELD_FECHA_VENC_REV),
						$model::FIELD_FECHA_AGENDA    => $model->getAttributeLabel($model::FIELD_FECHA_AGENDA),
						$model::FIELD_CUMPLES         => $model->getAttributeLabel($model::FIELD_CUMPLES)
					];
				}

				echo $form->field($model, 'advanced_seleccion_campo_busqueda')->widget(Select2::className(), [
					'options'       => [
						'placeholder' => 'Seleccione un campo ...',
					],
					'pluginOptions' => [
						'allowClear' => true
					],
					'data'          => $data_advanced_seleccion_campo_busqueda,
				]) ?>
            </div>
            <div class="col col-sm-6">
				<?php
				if ( ! Yii::$app->request->getQueryParam('sms')) {
					echo $form->field($model, 'tipo')->widget(Select2::className(), [
						'options'       => [
							'placeholder' => 'Seleccione un tipo ...',
						],
						'pluginOptions' => [
							'allowClear' => true
						],
						'data'          => [
							0 => 'Público',
							1 => 'Particular',
							3 => 'Moto'
						],
					]);
				}
				?>
            </div>
        </div>

        <div class="row">
            <div class="col col-sm-6">
				<?= $form->field($model, 'advanced_date_from')->widget(DatePicker::className(), [
					'pluginOptions' => [
						'todayHighlight' => true,
						'todayBtn'       => false,
						'format'         => 'yyyy-mm-dd',
						'autoclose'      => true,
					]
				]) ?>
            </div>
            <div class="col col-sm-6">
				<?= $form->field($model, 'advanced_date_to')->widget(DatePicker::className(), [
					'pluginOptions' => [
						'todayHighlight' => true,
						'todayBtn'       => false,
						'format'         => 'yyyy-mm-dd',
						'autoclose'      => true,
					]
				]) ?>
            </div>
        </div>


        <div class="form-group">
			<?= Html::submitButton('Buscar', ['class' => 'btn btn-primary']) ?>
			<?= Html::a('Restablecer', ['//datos'], ['class' => 'btn btn-default']) ?>
        </div>

		<?php ActiveForm::end(); ?>

    </div>
<?php
$css = <<<CSS
.hint-block{
    display: block;
    margin-top: 5px;
    margin-bottom: 10px;
    color: #737373;
}
CSS;

$this->registerCss($css);
?>