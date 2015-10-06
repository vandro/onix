<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\SearchUser */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title =Yii::t('back', 'Users');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?=   Html::a(Yii::t('back',
                'Create User'), ['create'],
                ['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">

                                    <?php  
                    \yii\widgets\Pjax::begin();
                    echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
        'columns' => [
                                'id',
            'username',
//            'auth_key',
//            'password_hash',
//            'password_reset_token',
             'email:email',
             'status',
            // 'created_at',
            // 'updated_at',

                    ['class' => 'yii\grid\ActionColumn'],
                    ],
                    ]);
                    \yii\widgets\Pjax::end();
                    ?>
                            </div>
        </div>
    </div>
</div>