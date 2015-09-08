<?php
use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;

/* @var $this \yii\web\View */
/* @var $content string */

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="skin-blue wysihtml5-supported">
    <?php $this->beginBody() ?>
    <div class="wrapper">
        <?= $this->render('//layouts/header') ?>

        <?= $this->render('//layouts/menu') ?>

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Dashboard
                    <small>Control panel</small>
                </h1>
                <ol class="breadcrumb">
                    <?= Breadcrumbs::widget([
                        'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
                    ]) ?>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <?= $content ?>
            </section><!-- /.content -->

        </div><!-- /.content-wrapper -->

        <?= $this->render('//layouts/footer') ?>

    </div><!-- ./wrapper -->

    <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
