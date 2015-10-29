<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\SearchUser */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title                   = Yii::t('back', 'Usuarios');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back',
                        'Crear') . ' ' . \yii\helpers\Inflector::camel2words('Usuario'), ['create'],
                    ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                <?php
                \yii\widgets\Pjax::begin();
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel'  => $searchModel,
                    'columns'      => [
                        'id',
                        'username',
                        'email:email',
//                        'auth_key',
//                        'password_hash',
                        'password_reset_token',
                        [
                            'attribute' => 'status',
                            'value'     => function ($model){
                                return $model->getStatus($model->status);
                            },
                            'filter'    => $searchModel->getStatus()
                        ],
                        //                         'created_at',
                        //                         'updated_at',
                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                ]);
                \yii\widgets\Pjax::end();
                ?>
            </div>
        </div>
    </div>
</div>