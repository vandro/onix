<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Menu */

$this->title = ucwords(Yii::$app->controller->id);
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', ucwords(Yii::$app->controller->id)), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', ucwords(Yii::$app->controller->action->id))];
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Delete'), ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => Yii::t('back', 'Are you sure you want to delete this item?'),
                        'method' => 'post',
                    ],
                ]) ?>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id',
                        'name',
                        'url:url',
                        'icon',
                        'show',
                        'order',
                        'menu_id',
                    ],
                ]) ?>
            </div>
        </div>
    </div>
</div>
