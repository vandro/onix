<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:04 PM
 */
?>
<footer class="footer main-footer">
    <div class="container">
        <p class="pull-left">&copy; <?= Yii::$app->params['companyName'] . ' ' . date('Y') ?></p>
        <p class="pull-right"><?= Yii::powered() ?> & <?= \yii\helpers\Html::a(Yii::$app->params['companyName'], Yii::$app->params['companyUrl']) ?></p>
    </div>
</footer>