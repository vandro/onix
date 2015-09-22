<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/**
 * @var yii\web\View $this
 * @var mdm\admin\models\Route $model
 * @var \yii\bootstrap\ActiveForm $form
 */

$this->title                   = Yii::t('rbac-admin', 'Create Route');
$this->params['breadcrumbs'][] = ['label' => Yii::t('rbac-admin', 'Routes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
            </div>
            <div class="message-form box-body">
                <?php $form = ActiveForm::begin([
                    'layout'      => 'horizontal',
                    'fieldConfig' => [
                        'template'             => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
                        'horizontalCssClasses' => [
                            'label'   => 'col-sm-2',
                            'offset'  => 'col-sm-offset-2',
                            'wrapper' => 'col-sm-8',
                            'error'   => '',
                            'hint'    => '',
                        ],
                    ],
                ]); ?>

                <?= $form->field($model, 'route') ?>


                <div class="form-group">
                    <div class="btn-group col-md-offset-5" role="group">
                        <?= Html::submitButton(Yii::t('back', 'Create'), ['class' => 'btn btn-success']) ?>
                        <?= Html::a(Yii::t('back', 'Cancel'), \yii\helpers\Url::to(['index']),
                            [
                                'class'        => 'btn btn-danger',
                                'data-confirm' => Yii::t('back', 'Are you sure you want to cancel?')
                            ])
                        ?>
                    </div>
                </div>

                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>
