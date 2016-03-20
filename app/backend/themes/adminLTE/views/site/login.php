<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */
$this->title = Yii::t('back', 'Iniciar sesion');
?>

    <div class="login-box">
        <div class="login-logo">
            <a href="<?= \yii\helpers\Url::to(Yii::$app->request->baseUrl) ?>"><b>ONIX</b> CMS</a>
        </div>
        <!-- /.login-logo -->
        <?php foreach (Yii::$app->session->getAllFlashes() as $key => $flash): ?>
            <div class="alert alert-<?= $key ?> alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <!--<h4><i class="icon fa fa-ban"></i> Alert!</h4>-->
                <?= $flash ?>
            </div>
        <?php endforeach; ?>
        <div class="box login-box-body">
                    <div class="login-form-preloader overlay hide">
                        <i class="fa fa-refresh fa-spin"></i>
                    </div>
            <p class="login-box-msg"><?= Yii::t('back', 'Identifiquese para acceder') ?></p>
            <?php $form = ActiveForm::begin([
                'id'                   => 'login-form',
                'enableAjaxValidation' => true,
            ]); ?>
            <div class="form-group has-feedback">
                <?=
                $form->field($model, 'username')->textInput([
                    'class'       => 'form-control',
                    'placeholder' => $model->getAttributeLabel('username')
                ])->label(false)
                ?>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <?=
                $form->field($model, 'password')->passwordInput([
                    'class'       => 'form-control',
                    'placeholder' => $model->getAttributeLabel('password')
                ])->label(false)
                ?>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-7">
                    <?= $form->field($model, 'rememberMe')->checkbox(['class' => 'icheck']) ?>
                </div>
                <!-- /.col -->
                <div class="col-xs-5">
                    <?= Html::submitButton(Yii::t('back', 'Iniciar sesion'), ['class' => 'btn btn-primary btn-block btn-flat']) ?>
                </div>
                <!-- /.col -->
            </div>
            <?php ActiveForm::end(); ?>
            <!-- /.social-auth-links -->
            <?= \yii\helpers\Html::a(Yii::t('back', 'Olvide mi contraseña'), ['request-password-reset']) ?><br>
        </div>
        <!-- /.login-box-body -->
    </div><!-- /.login-box -->
<?php
$script = <<< JS
    $(function () {
        $('input.icheck').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });

        $("#login-form").on("beforeValidate", function(e){
            $(".login-form-preloader").removeClass("hide");
        });

        $("#login-form").on("afterValidate", function (event, attribute, messages, deferreds){
            if(attribute['loginform-password'].length > 0){
                $(".login-form-preloader").addClass("hide");
            }
        });
    });
JS;

$this->registerJs($script, \yii\web\View::POS_END);
?>
