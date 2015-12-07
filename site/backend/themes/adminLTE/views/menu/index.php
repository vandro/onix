<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SearchMenu */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title                   = Yii::t('back', 'Menus');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Crear') . ' Menu', ['create'], ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">
                <?php \yii\widgets\Pjax::begin();

                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel'  => $searchModel,
                    'columns'      => [
                        'id',
                        'name',
                        'url',
                        'icon',
                        'show',
                        // 'order',
                        // 'menu_id',

                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                    'tableOptions' => [
                        'class' => 'table table-hover'
                    ]
                ]);

                \yii\widgets\Pjax::end();
                ?>
            </div>
        </div>
    </div>
</div>
