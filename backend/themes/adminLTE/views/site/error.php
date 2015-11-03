<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $name string */
/* @var $message string */
/* @var $exception Exception */

$this->title                   = $name;
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="error-page">
    <h2 class="headline text-yellow"> <?= $exception->statusCode ?></h2>

    <div class="error-content">
        <h3><i class="fa fa-warning text-yellow"></i> Oops! <?= Yii::t('back', 'Hubo un error') ?>.</h3>

        <p>
            <?= Yii::t('app', nl2br(Html::encode($message))) ?>
            <?= Yii::t('app', 'Tal vez quieras') ?>
            <a href="<?= \yii\helpers\Url::to(['//site/index']) ?>"><?= Yii::t('app', 'ir a la página principal') ?></a>
        </p>
    </div>
    <!-- /.error-content -->
</div><!-- /.error-page -->
</section><!-- /.content -->
