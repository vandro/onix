<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:04 PM
 */
?>
<footer class="main-footer">
    <div class="pull-left hidden-xs">
        &copy; <?= Yii::$app->params['companyName'] . ' ' . date('Y') ?>
    </div>
    <div class="pull-right hidden-xs">
        <?= Yii::powered() ?> & <?= \yii\helpers\Html::a(Yii::$app->params['companyName'], Yii::$app->params['companyUrl']) ?>
    </div>
</footer>

<?php
$this->registerJs("$.widget.bridge('uibutton', $.ui.button);", \yii\web\View::POS_END);
?>