<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SearchSourceMessage */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title                   = Yii::t('back', 'Source Messages');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?php /* Html::a(Yii::t('back', 'Create Source Message'), ['create'], ['class' => 'btn btn-success'])*/ ?>
            </div>
            <div class="box-body">

                <?php
                \yii\widgets\Pjax::begin();
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel'  => $searchModel,
                    'columns'      => [
                        'id',
                        'category',
                        'message:ntext',
                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                ]);
                \yii\widgets\Pjax::end();
                ?>
            </div>
        </div>
    </div>
</div>