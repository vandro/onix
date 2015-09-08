<?php
/* @var $this yii\web\View */

$this->title = 'My Yii Application';
?>
<div class="row">
    <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
            <!-- form start -->
            <div class="box-body">
                <h1><?= Yii::t('back', 'Hello {user}', ['user' => Yii::$app->user->identity->username]) ?>!</h1>
                <p class="lead"><?= Yii::t('back', 'Welcome to the {site} Content Management System (CMS)', ['site' => Yii::$app->name]) ?></p>
                <div class="alert alert-info alert-dismissable">
<!--                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>-->
                    <h4><i class="icon fa fa-info"></i> <?= Yii::t('back', 'info') ?>!</h4>
                    <?= Yii::t('back', 'Select any of the left menu to start') ?>
                </div>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
</div>