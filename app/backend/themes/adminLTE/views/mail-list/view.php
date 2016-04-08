<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model common\models\MailList */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Mail Lists'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?=
                Html::a(Yii::t('back', 'Delete'), ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => Yii::t('back', 'Are you sure you want to delete this item?'),
                        'method' => 'post',
                    ],
                ])
                ?>
            </div>
            <div class="box-body">
                <?=
                DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id',
                        'const_name',
                        'name',
                        'description:ntext',
                        'created_at:datetime',
                        'updated_at:datetime',
                    ],
                ])
                ?>

                <div class="box-header with-border">
                    <h2>Personas inscritas en esta lista:</h2>
                </div>

                <?php
                $peopleListModel = new \backend\models\SearchMailListPeople();
                
                $dataProvider = $peopleListModel->searchReverseByList($model->id);

                \yii\widgets\Pjax::begin();
                
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'columns' => [
                        'name',
                        'email:email',
                        'additional_data:ntext',
                        [
                            'class' => 'yii\grid\ActionColumn',
                            'template' => '{view}',
                            'urlCreator' => function ($action, $model, $key, $index) {
                                    if ($action === 'view') {
                                        $url = \yii\helpers\Url::to(['//mail-list-people/' . $action, 'id' => $model->id]); // your own url generation logic
                                        return $url;
                                    }
                                }
                        ]
                    ]
                ]);
                        
                \yii\widgets\Pjax::end();
                        ?>
            </div>
        </div>
    </div>
</div>