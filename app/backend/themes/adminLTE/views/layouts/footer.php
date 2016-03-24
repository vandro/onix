<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:04 PM
 */

use kartik\growl\Growl;

?>
    <footer class="footer main-footer">
        <div class="container">
            <p class="pull-left"><?= \yii\helpers\Html::a(Yii::$app->params['companyName'].'&reg;', Yii::$app->params['companyUrl'], ['target' => '_blank']) . ' ' . date('Y') ?></p>

            <p class="pull-right"><?= Yii::powered() ?></p>
        </div>
    </footer>

<?php
foreach (Yii::$app->session->getAllFlashes() as $flash_type => $flash_message) {
    echo Growl::widget([
        'type'          => $flash_type,
        'showSeparator' => true,
        'body'          => $flash_message,
    ]);
}
?>