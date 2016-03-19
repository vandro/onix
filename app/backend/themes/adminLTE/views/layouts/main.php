<?php
use \backend\themes\adminLTE\AppAsset;
use yii\helpers\Html;
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
    <link rel="icon" href="<?= Yii::$app->request->baseUrl ?>/favicon.ico">
    <link rel="manifest" href="<?= Yii::$app->request->baseUrl ?>/manifest.json">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title><?= Html::encode(Yii::$app->name . ' - ' . $this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<?php $this->beginBody() ?>
<div class="wrapper">
    <?= $this->render('//layouts/header') ?>
    <?= $this->render('//layouts/menu') ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <?= ucwords(Yii::$app->controller->id) ?>
                <small><?= ucwords(Yii::$app->controller->action->id) ?></small>
            </h1>
            <?= Breadcrumbs::widget([
                'links' => isset( $this->params['breadcrumbs'] ) ? $this->params['breadcrumbs'] : [],
                'tag'   => 'ol'
            ]) ?>
        </section>
        <!-- Main content -->
        <section class="content">
            <?= $content ?>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <?= $this->render('//layouts/footer') ?>
</div>
<!-- ./wrapper -->
<?php
$this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
