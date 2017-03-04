<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SearchDatos */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="datos-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'placa') ?>

    <?= $form->field($model, 'nombre') ?>

    <?= $form->field($model, 'apellido') ?>

    <?= $form->field($model, 'direccion') ?>

    <?php // echo $form->field($model, 'telefono') ?>

    <?php // echo $form->field($model, 'celular') ?>

    <?php // echo $form->field($model, 'fecha_nacimiento') ?>

    <?php // echo $form->field($model, 'tipo') ?>

    <?php // echo $form->field($model, 'fecha_revision') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'fecha_vencimiento') ?>

    <?php // echo $form->field($model, 'cedula') ?>

    <?php // echo $form->field($model, 'tipo_u') ?>

    <?php // echo $form->field($model, 'contesto') ?>

    <?php // echo $form->field($model, 'fecha_agenda') ?>

    <?php // echo $form->field($model, 'agenda') ?>

    <?php // echo $form->field($model, 'observacion') ?>

    <?php // echo $form->field($model, 'cedula_runt') ?>

    <?php // echo $form->field($model, 'fecha_exp_soat') ?>

    <?php // echo $form->field($model, 'fecha_vig_soat') ?>

    <?php // echo $form->field($model, 'fecha_venc_soat') ?>

    <?php // echo $form->field($model, 'empresa_soat') ?>

    <?php // echo $form->field($model, 'estado_soat') ?>

    <?php // echo $form->field($model, 'poliza_soat') ?>

    <?php // echo $form->field($model, 'barrio_id') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
