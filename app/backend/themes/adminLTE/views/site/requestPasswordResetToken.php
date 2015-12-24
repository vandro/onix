<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\PasswordResetRequestForm */

$this->title                   = Yii::t('back', 'Solicitar restablecer contraseña');
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
        <p class="login-box-msg"><?= Yii::t('back', 'Por favor escriba su email. Se enviara un link para que pueda restablecer su contraseña.') ?></p>
        <?php $form = ActiveForm::begin(['id' => 'request-password-reset-form']); ?>
        <div class="form-group has-feedback">
            <?=
            $form->field($model, 'email')->textInput([
                'class'       => 'form-control',
                'placeholder' => $model->getAttributeLabel('email')
            ])->label(false)
            ?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="row">
            <!-- /.col -->
            <div class="col-xs-4">
                <?= Html::a(Yii::t('app', 'Cancelar'), ['//site/login'], ['class' => 'btn btn-danger btn-block btn-flat']) ?>
            </div>
            <div class="col-xs-4"></div>
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