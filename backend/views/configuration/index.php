<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('back', 'Configurations');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?=   Html::a(Yii::t('back', 'Create Configuration'), ['create'], ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                                    <?php  
                    \yii\widgets\Pjax::begin();
                    echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'columns' => [
                                'id',
            'company',
            'email_name:email',
            'host',
            'encryption',
            // 'username',
            // 'password',
            // 'port',
            // 'template:ntext',

                    ['class' => 'yii\grid\ActionColumn'],
                    ],
                    ]);
                    \yii\widgets\Pjax::end();
                    ?>
                            </div>
        </div>
    </div>
</div>