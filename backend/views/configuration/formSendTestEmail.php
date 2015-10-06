<?php
/**
 * Created by BaseBackend development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 9/09/15
 * Time: 11:08 AM
 */

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

?>

<div class="configuration-form box-body">

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

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <div class="btn-group col-md-offset-5" role="group">
            <?= Html::submitButton(Yii::t('back', 'Send'), ['class' => 'btn btn-primary']) ?>
            <?= Html::a(Yii::t('back', 'Cancel'), \yii\helpers\Url::to(['index']),
                ['class' => 'btn btn-danger', 'data-confirm' => Yii::t('back', 'Are you sure you want to cancel?')])
            ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>
</div>
