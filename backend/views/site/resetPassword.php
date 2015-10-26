<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\PasswordResetRequestForm */

$this->title                   = Yii::t('back', 'Solucitud de restablecer contraseña');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="login-box">
    <?php if (Yii::$app->controller->layout == 'login') : ?>
        <div class="login-logo">
            <a href="<?= \yii\helpers\Url::to(Yii::$app->request->baseUrl) ?>"><b>ONIX</b> CMS</a>
        </div>
    <?php endif ?>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg"><?= Yii::t('back', 'Crear nueva contraseña') ?></p>
        <?php $form = ActiveForm::begin([
            'id'                     => 'reset-password-form',
            'enableClientValidation' => true
        ]); ?>
        <div class="form-group has-feedback">
            <?= $form->field($model, 'password')->passwordInput([
                'class'       => 'form-control',
                'placeholder' => $model->getAttributeLabel('password')
            ])->label(false)
            ?>
            <span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <?= $form->field($model, 'confirm_password')->passwordInput([
                'class'       => 'form-control',
                'placeholder' => $model->getAttributeLabel('confirm_password')
            ])->label(false)
            ?>
            <span class="glyphicon glyphicon-asterisk form-control-feedback"></span>
        </div>
        <div class="row">
            <!-- /.col -->
            <div class="col-xs-8"></div>
            <div class="col-xs-4">
                <?= Html::submitButton(Yii::t('app', 'Enviar'), ['class' => 'btn btn-primary btn-block btn-flat']) ?>
            </div>
            <!-- /.col -->
        </div>
        <?php ActiveForm::end(); ?>
        <!-- /.social-auth-links -->
    </div>
    <!-- /.login-box-body -->
</div><!-- /.login-box -->