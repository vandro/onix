<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model common\models\MailListPeople */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="mail-list-people-form box-body">

    <?php
    $form = ActiveForm::begin([
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
    ]);
    ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'additional_data')->textarea(['rows' => 6]) ?>
    
    <?= $form->field( $model, 'mailLists' )->widget( Select2::classname(), [
        'data'     => ArrayHelper::map(\common\models\MailList::find()->all(), 'id', 'name' ),
        'language' => Yii::$app->language,
        'theme'    => Select2::THEME_BOOTSTRAP,
        'options'  => [
            'placeholder' => Yii::t( 'back', 'Select an option ...' ),
            'multiple'    => true
        ],
    ] ); ?>


    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary'])
            ?>
            <?=
            Html::a(Yii::t('back', 'Cancel'), \yii\helpers\Url::to(['index']), ['class' => 'btn btn-danger', 'data-confirm' => Yii::t('back', 'Are you sure you want to cancel?')])
            ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
