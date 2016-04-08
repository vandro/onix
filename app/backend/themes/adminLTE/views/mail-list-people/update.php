<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\MailListPeople */

$this->params['breadcrumbs'][] = ['label' => 'Mail List Peoples', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('back', 'Update');
?>

<div class="mail-list-people-update row">
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
