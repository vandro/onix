<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use common\models\User;
use kartik\select2\Select2;
use kartik\file\FileInput;

/* @var $this yii\web\View */
/* @var $model common\models\User */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-form box-body">

    <?php
    $form = ActiveForm::begin([
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
        'options'     => [
            'enctype' => 'multipart/form-data'
        ]
    ]); ?>

    <?= $form->field($model, 'username')->textInput() ?>
    <?php

    if ( ! $model->isNewRecord) {
        echo $form->field($model, 'auth_key')->textInput(['readonly' => 'readonly']);
        echo $form->field($model, 'password_hash')->textInput(['readonly' => 'readonly']);
        echo $form->field($model, 'password_reset_token')->textInput(['readonly' => 'readonly']);
    }

    ?>
    <?= $form->field($model, 'email')->textInput() ?>
    <?= $form->field($model, 'status')->widget(Select2::classname(), [
        'data'     => [
            User::STATUS_DELETED   => Yii::t('back', 'Deleted'),
            User::STATUS_ACTIVE    => Yii::t('back', 'Active'),
            User::STATUS_SUSPENDED => Yii::t('back', 'Suspended')
        ],
        'language' => Yii::$app->language,
        'theme'    => Select2::THEME_BOOTSTRAP
    ]); ?>

    <?= $form->field($model, 'new_image')->widget(FileInput::classname(), [
        'options'       => [
            'accept' => 'image/*'
        ],
        'pluginOptions' => [
            'showUpload'     => false,
            'showRemove'     => false,
            'initialPreview' => $model->isNewRecord ? [] : [Html::img(Yii::getAlias('@web') . '/uploads/' . $model->picture)]
        ]
    ]); ?>

    <div class="form-group">
        <label class="control-label col-sm-2"><?= Yii::t('back', 'Change Password') ?></label>

        <div class="col-sm-8">
            <?= Html::a(Yii::t('back', 'Click Here to Change the password'),
                ['change-password', 'email' => $model->email]) ?>
        </div>
    </div>

    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('back', 'Create') : Yii::t('back', 'Update'),
                ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            <?= Html::a(Yii::t('back', 'Cancel'), \yii\helpers\Url::to(['index']),
                ['class' => 'btn btn-danger', 'data-confirm' => Yii::t('back', 'Are you sure you want to cancel?')])
            ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
