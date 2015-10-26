<?php
use backend\assets\AppAsset;
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

AppAsset::register($this);

$this->registerJsFile(Yii::getAlias('@web') . '/bootstrap/js/bootstrap.min.js', ['depends' => \yii\web\JqueryAsset::className()]);
$this->registerJsFile(Yii::getAlias('@web') . '/plugins/iCheck/icheck.min.js', ['depends' => \yii\web\JqueryAsset::className()]);
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
<body class="login-page">
<?php $this->beginBody() ?>

<?php echo $content ?>

</footer>
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
