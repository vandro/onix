<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SearchMunicipio */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title ='Municipios';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?=   Html::a(Yii::t('back', 'Create') . ' ' . Yii::t('back', 'Municipio'), ['create'],
                ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                                    <?php  
                    \yii\widgets\Pjax::begin();
                    echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
        'columns' => [
                                'code',
            'name',
            'lat',
            'long',
            'departamento_code',

                    ['class' => 'yii\grid\ActionColumn'],
                    ],
                    ]);
                    \yii\widgets\Pjax::end();
                    ?>
                            </div>
        </div>
    </div>
</div>