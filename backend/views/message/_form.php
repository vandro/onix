<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Message */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="message-form box-body">

    <?php $form = ActiveForm::begin([
        'layout' => 'horizontal',
        'fieldConfig' => [
            'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
            'horizontalCssClasses' => [
                'label' => 'col-sm-2',
                'offset' => 'col-sm-offset-2',
                'wrapper' => 'col-sm-8',
                'error' => '',
                'hint' => '',
            ],
        ],
    ]); ?>

        <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'language')->textInput(['maxlength' => 16]) ?>

    <?= $form->field($model, 'translation')->textarea(['rows' => 6]) ?>


    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton($model->isNewRecord ? Yii::t('back', 'Create') : Yii::t('back', 'Update'),
                ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            <?= Html::a(Yii::t('back', 'Cancel'), \yii\helpers\Url::to(['index']),
            ['class' => 'btn btn-danger', 'data-confirm' => Yii::t('back', 'Are you sure you want to cancel?')])
            ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
