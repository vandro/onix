<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Configuration */

$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Configurations'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('back', Yii::t('back', 'Update'));
?>

<div class="configuration-update row">
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
