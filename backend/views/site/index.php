<?php
/* @var $this yii\web\View */

$this->title = Yii::t('back', 'Dashboard');
?>
<div class="row">
    <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
            <!-- form start -->
            <div class="box-body">
                <h1><?= Yii::t('back', 'Hello {user}', ['user' => Yii::$app->user->identity->username]) ?></h1>
                <p class="lead"><?= Yii::t('back', "Welcome to {site}'s Content Management System (CMS)", ['site' => Yii::$app->name]) ?></p>
<!--                <div class="alert alert-info alert-dismissable">-->
<!--                    <h4><i class="icon fa fa-info"></i> --><?//= Yii::t('back', 'info') ?><!--!</h4>-->
<!--                    --><?//= Yii::t('back', 'Select any of the left menu to start') ?>
<!--                </div>-->
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
</div>