<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\MailListPeople */

$this->params['breadcrumbs'][] = ['label' => Yii::t('back', ucwords(Yii::$app->controller->id)), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('back', ucwords(Yii::$app->controller->action->id));
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
            </div>
            <?= $this->render('_form', [
            'model' => $model,
            ]) ?>
        </div>
    </div>
</div>
