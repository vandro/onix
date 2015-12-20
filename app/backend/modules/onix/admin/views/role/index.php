<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/**
 * @var yii\web\View $this
 * @var yii\data\ActiveDataProvider $dataProvider
 * @var mdm\admin\models\AuthItemSearch $searchModel
 */
$this->title                   = Yii::t('rbac-admin', 'Roles');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('rbac-admin', 'Create Role'), ['create'], ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                <?php
                Pjax::begin([
                    'enablePushState' => false,
                ]);
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel'  => $searchModel,
                    'columns'      => [
                        ['class' => 'yii\grid\SerialColumn'],
                        [
                            'attribute' => 'name',
                            'label'     => Yii::t('rbac-admin', 'Name'),
                        ],
                        [
                            'attribute' => 'description',
                            'label'     => Yii::t('rbac-admin', 'Description'),
                        ],
                        ['class' => 'yii\grid\ActionColumn',],
                    ],
                ]);
                Pjax::end();
                ?>
            </div>
        </div>
    </div>
</div>