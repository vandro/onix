<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\PasswordResetRequestForm */

$this->title = Yii::t('back', 'Request password reset');
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="login-box">
    <div class="login-logo">
        <a href="<?= Yii::$app->params['companyUrl'] ?>"><b>ONIX</b> CMS</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg"><?= Yii::t('back', 'Please fill out your email. A link to reset password will be sent there.') ?></p>
            <?php $form = ActiveForm::begin(['id' => 'request-password-reset-form']); ?>
        <div class="form-group has-feedback">
            <?=
            $form->field($model, 'email')->textInput([
                'class' => 'form-control',
                'placeholder' => $model->getAttributeLabel('email')
            ])->label(false)
            ?>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>
        <div class="row">
            <!-- /.col -->
            <div class="col-xs-8"></div>
            <div class="col-xs-4">
                <?= Html::submitButton('Send', ['class' => 'btn btn-primary btn-block btn-flat']) ?>
            </div>
            <!-- /.col -->
        </div>
        <?php ActiveForm::end(); ?>
        <!-- /.social-auth-links -->
    </div>
    <!-- /.login-box-body -->
</div><!-- /.login-box -->