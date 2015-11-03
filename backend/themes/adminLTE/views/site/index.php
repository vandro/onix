<?php
/* @var $this yii\web\View */

$this->title = Yii::t('back', 'Panel de control');
?>
<div class="row">
    <div class="col-md-12">
        <!-- general form elements -->
        <div class="box box-primary">
            <!-- form start -->
            <div class="box-body">
                <h1><?= Yii::t('back', 'Hola {user}', ['user' => Yii::$app->user->identity->username]) ?></h1>

                <p class="lead"><?= Yii::t('back', "Bienvenido al Administrador de contenidos de  {site}", ['site' => Yii::$app->name]) ?></p>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>