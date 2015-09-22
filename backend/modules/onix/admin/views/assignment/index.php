<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $searchModel mdm\admin\models\searchs\Assignment */

$this->title = Yii::t('rbac-admin', 'Assignments');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border"></div>
            <div class="box-body">
                <?php
                Pjax::begin([
                    'enablePushState'=>false,
                ]);
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        [
                            'class' => 'yii\grid\DataColumn',
                            'attribute' => $usernameField,
                        ],
                        [
                            'class' => 'yii\grid\ActionColumn',
                            'template'=>'{view}'
                        ],
                    ],
                ]);
                Pjax::end();
                ?>
            </div>
        </div>
    </div>
</div>