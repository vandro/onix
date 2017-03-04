<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SearchDatos */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title ='Datos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
                <?=   Html::a(Yii::t('back', 'Create') . ' ' . Yii::t('back', 'Datos'), ['create'],
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
            'placa',
            'nombre',
            'apellido',
            'direccion',
            // 'telefono',
            // 'celular',
            // 'fecha_nacimiento',
            // 'tipo',
            // 'fecha_revision',
            // 'email:email',
            // 'fecha_vencimiento',
            // 'cedula',
            // 'tipo_u',
            // 'contesto',
            // 'fecha_agenda',
            // 'agenda',
            // 'observacion',
            // 'cedula_runt',
            // 'fecha_exp_soat',
            // 'fecha_vig_soat',
            // 'fecha_venc_soat',
            // 'empresa_soat',
            // 'estado_soat',
            // 'poliza_soat',
            // 'barrio_id',

                    ['class' => 'yii\grid\ActionColumn'],
                    ],
                    ]);
                    \yii\widgets\Pjax::end();
                    ?>
                            </div>
        </div>
    </div>
</div>