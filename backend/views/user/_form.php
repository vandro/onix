<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use common\models\User;
use kartik\select2\Select2;
use zxbodya\yii2\elfinder\ElFinderInput;

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
            User::STATUS_DELETED   => Yii::t('back', 'Borrado'),
            User::STATUS_ACTIVE    => Yii::t('back', 'Activo'),
            User::STATUS_SUSPENDED => Yii::t('back', 'Suspendido')
        ],
        'language' => Yii::$app->language,
        'theme'    => Select2::THEME_BOOTSTRAP
    ]); ?>

    <?= $form->field($model, 'picture')->widget(ElFinderInput::className(), [
        'connectorRoute' => 'el-finder/back-connector',
        'options'        => [
            'class' => 'form-group'
        ]
    ]) ?>

    <div class="form-group">
        <label class="control-label col-sm-2"><?= Yii::t('back', 'Cambiar contraseña') ?></label>

        <div class="col-sm-8">
            <?= Html::a(Yii::t('back', 'Clic aqui para cambiar la contraseña'),
                ['change-password', 'email' => $model->email]) ?>
        </div>
    </div>

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
