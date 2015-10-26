<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use dosamigos\ckeditor\CKEditor;

/* @var $this yii\web\View */
/* @var $model backend\models\Configuration */
/* @var $form ActiveForm */
?>

<div class="configuration-form box-body">

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

    <?= $form->field($model, 'company')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'host')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'encryption')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password')->passwordInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'port')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'template')->widget(CKEditor::className(), [
        'options'       => ['rows' => 6],
        'preset'        => 'basic',
        'clientOptions' => [
            'allowedContent' => true,
            'toolbarGroups'  => [
                ['name' => 'editing', 'groups' => ['tools']],
                ['name' => 'document', 'groups' => ['mode', 'document', 'doctools']],
            ]
        ]
    ]) ?>

    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('back', 'Crear') : Yii::t('back', 'Actualizar'),
                ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            <?= Html::a(Yii::t('back', 'Cancelar'), \yii\helpers\Url::to(['index']),
                ['class' => 'btn btn-danger', 'data-confirm' => Yii::t('back', 'Esta seguro que desea cancelar?')])
            ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
