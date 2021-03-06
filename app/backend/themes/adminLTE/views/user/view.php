<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\User */

$this->title                   = $model->username;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Users'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Actualizar'), [
                    'update',
                    'id' => $model->id
                ], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Eliminar'), ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data'  => [
                        'confirm' => Yii::t('back', 'Esta seguro que desea eliminar este elemento?'),
                        'method'  => 'post',
                    ],
                ]) ?>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                    'model'      => $model,
                    'attributes' => [
                        'id',
                        'username',
                        'auth_key',
                        'password_hash',
                        'password_reset_token',
                        'email:email',
                        'status',
                        [
                            'attribute' => 'picture',
                            'format'    => ['image'],
                            'value'     => $model->picture
                        ],
                        'created_at',
                        'updated_at',
                    ],
                ]) ?>
            </div>
        </div>
    </div>
</div>