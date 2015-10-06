<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Configuration */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('back', 'Configurations'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?= Html::a(Yii::t('back', 'Update'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a(Yii::t('back', 'Send Test Email'), ['send-test-email'], ['class' => 'btn btn-success']) ?>
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
                        'email_name:email',
                        'host',
                        'encryption',
                        'username',
                        'port',
                        [
                            'attribute' => 'template',
                            'format' => 'raw',
                            'value' => Html::a(Yii::t('back', 'Click to view template'), ['view-email-template'],
                                ['target' => '_blank']),
                        ],
                    ],
                ]) ?>
            </div>
        </div>
    </div>
</div>