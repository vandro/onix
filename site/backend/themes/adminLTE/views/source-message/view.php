<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\SourceMessage */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Source Messages'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Delete'), ['delete', 'id' => $model->id], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => Yii::t('back', 'Esta seguro que desea borrar este elemento?'),
                            'method' => 'post',
                    ],
                ]) ?>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                            'id',
            'category',
            'message:ntext',
                ],
                ]) ?>
            </div>
        </div>
    </div>
</div>