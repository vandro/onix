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

    <link rel="apple-touch-icon" sizes="57x57" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?= Yii::$app->request->baseUrl ?>/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"
          href="<?= Yii::$app->request->baseUrl ?>/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= Yii::$app->request->baseUrl ?>/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?= Yii::$app->request->baseUrl ?>/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= Yii::$app->request->baseUrl ?>/favicon-16x16.png">
    <link rel="manifest" href="<?= Yii::$app->request->baseUrl ?>/manifest.json">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?= Yii::$app->request->baseUrl ?>/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

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
