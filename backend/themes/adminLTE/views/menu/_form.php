<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\select2\Select2;
use backend\models\FaIcon;
use yii\web\JsExpression;
use yii\helpers\ArrayHelper;
use yii\web\View;
use backend\models\Menu;

/* @var $this yii\web\View */
/* @var $model backend\models\Menu */
/* @var $form yii\bootstrap\ActiveForm */
?>
<div class="box-body">
    <?php $form = ActiveForm::begin([
        'layout'      => 'horizontal',
        'fieldConfig' => [
            'template'             => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
            'horizontalCssClasses' => [
                'label'   => 'col-sm-2',
                'offset'  => 'col-sm-offset-2',
                'wrapper' => 'col-sm-8',
                'error'   => '',
                'hint'    => '',
            ],
        ],
    ]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 45]) ?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => 255]) ?>

    <?php
    $format = <<<JS
        function format(state) {
            if (!state.id) return state.text; // optgroup
            return '<i class="fa ' + state.text + '"></i>  ' + state.text;
        }
JS;
    $escape = new JsExpression("function(m) { return m; }");
    $this->registerJs($format, View::POS_HEAD);

    echo $form->field($model, 'icon')->widget(Select2::classname(), [
        'data'          => ArrayHelper::map(FaIcon::find()->all(), 'class', 'class'),
        'language'      => Yii::$app->language,
        'theme'         => Select2::THEME_BOOTSTRAP,
        'options'       => ['placeholder' => Yii::t('back', 'Seleccione un icono ...')],
        'pluginOptions' => [
            'templateResult'    => new JsExpression('format'),
            'templateSelection' => new JsExpression('format'),
            'escapeMarkup'      => $escape,
            'allowClear'        => false
        ],
    ]); ?>

    <?= $form->field($model, 'show')->radioList(array('1' => Yii::t('back', 'Si'), '0' => Yii::t('back', 'No'))); ?>

    <?= $form->field($model, 'order')->textInput() ?>

    <?= $form->field($model, 'menu_id')->widget(Select2::classname(), [
        'data'          => ArrayHelper::map(Menu::find()->where(( $model->isNewRecord ) ? '1 = 1' : 'id != ' . $model->id)->all(), 'id', 'name'),
        'language'      => Yii::$app->language,
        'theme'         => Select2::THEME_BOOTSTRAP,
        'options'       => ['placeholder' => Yii::t('back', 'Seleccione una opcion ...')],
        'pluginOptions' => [
            'allowClear' => true
        ],
    ]); ?>

    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('back', 'Crear') : Yii::t('back', 'Actualizar'),
                ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary ']) ?>
            <?= Html::a(Yii::t('back', 'Cancelar'), \yii\helpers\Url::to(['index']), [
                'class'        => 'btn btn-danger',
                'data-confirm' => Yii::t('back', 'Esta seguro que desea cancelar?')
            ]) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>