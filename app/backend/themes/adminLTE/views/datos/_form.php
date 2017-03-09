<?php

use yii\helpers\Html;
use yii\web\JsExpression;
use kartik\date\DatePicker;
use kartik\select2\Select2;
use yii\bootstrap\ActiveForm;
use kartik\switchinput\SwitchInput;

/* @var $this yii\web\View */
/* @var $model common\models\Datos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-form box-body">

    <div>

		<?php $form = ActiveForm::begin([
			'layout'      => 'horizontal',
			'fieldConfig' => [
				'template'             => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
				'horizontalCssClasses' => [
					'label'   => 'col-md-2',
					'offset'  => 'col-md-offset-2',
					'wrapper' => 'col-md-8',
					'error'   => '',
					'hint'    => '',
				],
			],
		]); ?>

        <div class="form-group">
            <div class="col-md-4 col-md-offset-2">
				<?= $form->field($model, 'placa')->textInput(['maxlength' => true]) ?>
            </div>
            <div class="col-md-4 ">
				<?= $form->field($model, 'tipo')->widget(Select2::className(), [
					'options' => [
						'placeholder' => 'Seleccione un tipo ...',
					],
					'data'    => [
						0 => 'Público',
						1 => 'Particular',
						// 2 => 'Moto',
						3 => 'Moto'
						// 4 => 'Tipo 4'
					],
				]) ?>
            </div>
        </div>

		<?= $form->field($model, 'tipo_u')->widget(Select2::className(), [
			'options' => [
				'placeholder' => 'Seleccione un tipo ...',
			],
			'data'    => [
				0 => 'Propietario',
				1 => 'Conductor'
			],
		]) ?>

		<?= $form->field($model, 'cedula')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'apellido')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'direccion')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'telefono')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'celular')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

		<?= $form->field($model, 'fecha_nacimiento')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => false,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		]) ?>

		<?= $form->field($model, 'fecha_revision')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		]) ?>

		<?= $form->field($model, 'fecha_vencimiento')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		]) ?>

		<?= $form->field($model, 'contesto')->widget(SwitchInput::className(), [
			'containerOptions' => ['class' => ''],
			'pluginOptions'    => [
				'onText'  => 'Si',
				'offText' => 'No',
			]
		]) ?>

		<?= $form->field($model, 'agenda')->widget(SwitchInput::className(), [
			'containerOptions' => ['class' => ''],
			'pluginOptions'    => [
				'onText'  => 'Si',
				'offText' => 'No',
			]
		]) ?>

		<?= $form->field($model, 'fecha_agenda')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		]) ?>

		<?= $form->field($model, 'observacion')->textarea(['maxlength' => true]) ?>

		<?= $form->field($model, 'cedula_runt')->textInput(['maxlength' => true]) ?>

		<?php /*$form->field($model, 'fecha_exp_soat')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		])*/ ?>

		<?php /*$form->field($model, 'fecha_vig_soat')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		])*/ ?>

		<?= $form->field($model, 'fecha_venc_soat')->widget(DatePicker::className(), [
			'pluginOptions' => [
				'todayHighlight' => true,
				'todayBtn'       => true,
				'format'         => 'yyyy-mm-dd',
				'autoclose'      => true,
			]
		]) ?>

		<?php /*$form->field($model, 'empresa_soat')->textInput(['maxlength' => true])*/ ?>

		<?php /*$form->field($model, 'estado_soat')->textInput(['maxlength' => true])*/ ?>

		<?php /*$form->field($model, 'poliza_soat')->textInput(['maxlength' => true])*/ ?>

		<?= $form->field($model, 'barrio_id')->widget(Select2::className(), [
			'initValueText' => $model->isNewRecord ? null : ($model->barrio->municipioCode->name . ' - ' . $model->barrio->nombre),
			// set the initial display text
			'options'       => ['placeholder' => 'Buscar un barrio ...'],
			'pluginOptions' => [
				'allowClear'         => true,
				'minimumInputLength' => 3,
				'language'           => ['errorLoading' => new JsExpression("function () { return 'Esperando resultados...'; }"),],
				'ajax'               => [
					'url'      => \yii\helpers\Url::to(['//barrio/search']),
					'dataType' => 'json',
					'data'     => new JsExpression('function(params) { return {q:params.term}; }')
				],
				'escapeMarkup'       => new JsExpression('function (markup) { return markup; }'),
				'templateResult'     => new JsExpression('function(barrio) { return barrio.text; }'),
				'templateSelection'  => new JsExpression('function (barrio) { return barrio.text; }'),
			],
		]) ?>

    </div>


    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
			<?= Html::submitButton($model->isNewRecord ? 'Crear' : 'Actualizar',
				['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
			<?= Html::a('Cancelar', \yii\helpers\Url::to(['index']),
				['class' => 'btn btn-danger', 'data-confirm' => 'Está seguro que desea cancelar'])
			?>
        </div>
    </div>

	<?php ActiveForm::end(); ?>
</div>