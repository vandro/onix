<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Message */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Messages'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Update'), ['update', 'id' => $model->id, 'language' => $model->language], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Delete'), ['delete', 'id' => $model->id, 'language' => $model->language], [
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
            'language',
            'translation:ntext',
                ],
                ]) ?>
            </div>
        </div>
    </div>
</div>