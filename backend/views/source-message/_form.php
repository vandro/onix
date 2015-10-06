<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\bootstrap\Tabs;

/* @var $this yii\web\View */
/* @var $model backend\models\SourceMessage */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="source-message-form box-body">

	<?php $form = ActiveForm::begin( [
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
	] ); ?>

	<?= $form->field( $model, 'category' )->textInput( [ 'maxlength' => true ] ) ?>

	<?= $form->field( $model, 'message' )->textarea( [ 'rows' => 6 ] ) ?>

	<?php

	$items = [ ];
	foreach ( $model->messages as $key => $translation ) {
		$items[] = [
			'label'   => $translation->language,
			'content' => '
				<div class="form-group field-message-id required">
					' . Html::label( $translation->getAttributeLabel( 'translation' ),
					'translation[' . $translation->language . ']', [ 'class' => 'control-label col-sm-2' ] ) . '
					<div class="col-sm-8">
						' . Html::textarea( 'translation[' . $translation->language . ']',
					$model->isNewRecord ? '' : $translation->translation, [ 'class' => 'form-control' ] ) . '
						<div class="help-block help-block-error "></div>
					</div>
				</div>
				',
			'active'  => $key == 0
		];
	}

	echo Tabs::widget( [
		'items' => $items
	] ); ?>

	<div class="form-group">
		<div class="btn-group col-md-offset-5" role="group">
			<?= Html::submitButton( $model->isNewRecord ? Yii::t( 'back', 'Create' ) : Yii::t( 'back', 'Update' ),
				[ 'class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary' ] ) ?>
			<?= Html::a( Yii::t( 'back', 'Cancel' ), \yii\helpers\Url::to( [ 'index' ] ),
				[
					'class'        => 'btn btn-danger',
					'data-confirm' => Yii::t( 'back', 'Are you sure you want to cancel?' )
				] )
			?>
		</div>
	</div>

	<?php ActiveForm::end(); ?>
</div>
