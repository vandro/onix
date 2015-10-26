<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Configuration */

$this->title = $model->company;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Configuration'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Actualizar'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Enviar email de prueba'), ['send-test-email'], ['class' => 'btn btn-success']) ?>
                <?php /*echo Html::a(Yii::t('back', 'Delete'), ['delete', 'id' => $model->id], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => Yii::t('back', 'Are you sure you want to delete this item?'),
                            'method' => 'post',
                    ],
                ])*/ ?>
            </div>
            <div class="box-body">
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id',
                        'company',
                        'email_name',
                        'host',
                        'encryption',
                        'username:email',
                        'port',
                        [
                            'attribute' => 'template',
                            'format' => 'raw',
                            'value' => Html::a(Yii::t('back', 'Clic para ver la plantilla'), ['view-email-template'],
                                ['target' => '_blank']),
                        ],
                    ],
                ]) ?>
            </div>
        </div>
    </div>
</div>