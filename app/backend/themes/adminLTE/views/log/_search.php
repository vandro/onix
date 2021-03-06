<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\LogSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="log-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'level') ?>

    <?= $form->field($model, 'category') ?>

    <?= $form->field($model, 'log_time') ?>

    <?= $form->field($model, 'prefix') ?>

    <?php // echo $form->field($model, 'message') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('back', 'Buscar'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('back', 'Restablecer'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
