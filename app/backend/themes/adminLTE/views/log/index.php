<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\log\Logger;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title                   = Yii::t( 'back', 'Registros del sistema' );
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">
	<div class="col-md-12">
		<div class="menu-index box box-primary">
			<div class="box-header with-border">
				<?php //echo Html::a(Yii::t('back', 'Create Log'), ['create'], ['class' => 'btn btn-success']) ?>
				<?php echo Html::a( 'Limpiar Registro', [ 'clear' ], [ 'class' => 'btn btn-success' ] ) ?>
			</div>
			<div class="box-body">
				<?php
				\yii\widgets\Pjax::begin();
				echo GridView::widget( [
					'dataProvider' => $dataProvider,
					'filterModel'  => $searchModel,
					'rowOptions'   => function ( $model ) {
						return [ 'class' => str_replace( 'error', 'danger', Logger::getLevelName( $model->level ) ) ];
					},
					'columns'      => [
						'id',
						[
							'attribute' => 'level',
							'filter'    => [
								Logger::LEVEL_INFO    => Logger::getLevelName( Logger::LEVEL_INFO ),
								Logger::LEVEL_WARNING => Logger::getLevelName( Logger::LEVEL_WARNING ),
								Logger::LEVEL_ERROR   => Logger::getLevelName( Logger::LEVEL_ERROR ),
							],
							'value'     => function ( $model ) {
								return Logger::getLevelName( $model->level );
							}
						],
						'log_time:datetime',
						'category',
						'prefix:ntext',
						// 'message:ntext',
						[
							'class'    => 'yii\grid\ActionColumn',
							'template' => '{view}{delete}'
						],
					],
				] );
				\yii\widgets\Pjax::end();
				?>
			</div>
		</div>
	</div>
</div>