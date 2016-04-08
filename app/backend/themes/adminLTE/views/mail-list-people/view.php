<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $model common\models\MailListPeople */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Mail List Peoples', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?=
                Html::a('Delete', ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => 'Are you sure you want to delete this item?',
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
                        'name',
                        'email:email',
                        'additional_data:ntext',
                        'created_at:datetime',
                        'updated_at:datetime',
                    ],
                ])
                ?>

                <div class="box-header with-border">
                    <h2>Listas de email en las que se encuentra inscrito:</h2>
                </div>
                <?php
                $mailListModel = new \backend\models\SearchMailList();
                $dataProvider = $mailListModel->searchReverseByPeople($model->id);

                \yii\widgets\Pjax::begin();
                echo GridView::widget([
                    'dataProvider' => $dataProvider,
                    'columns' => [
                        'const_name',
                        'name',
                        'description:ntext',
                        [
                            'class' => 'yii\grid\ActionColumn',
                            'template' => '{view}',
                            'urlCreator' => function ($action, $model, $key, $index) {
                                if ($action === 'view') {
                                    $url = \yii\helpers\Url::to(['//mail-list/' . $action, 'id' => $model->id]); // your own url generation logic
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