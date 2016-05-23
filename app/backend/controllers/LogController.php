<?php

namespace backend\controllers;

use kartik\widgets\Growl;
use Yii;
use backend\models\Log;
use backend\models\LogSearch;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use common\controllers\BackController;

/**
 * LogController implements the CRUD actions for Log model.
 */
class LogController extends BackController {
	/**
	 * Lists all Log models.
	 * @return mixed
	 */
	public function actionIndex() {
		$searchModel  = new LogSearch();
		$dataProvider = $searchModel->search( Yii::$app->request->queryParams );

		return $this->render( 'index', [
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider
		] );
	}

	/**
	 * Displays a single Log model.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionView( $id ) {
		return $this->render( 'view', [
			'model' => $this->findModel( $id ),
		] );
	}

	/**
	 * Creates a new Log model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate() {
		$model = new Log();

		if ( $model->load( Yii::$app->request->post() ) && $model->save() ) {
			return $this->redirect( [ 'view', 'id' => $model->id ] );
		} else {
			return $this->render( 'create', [
				'model' => $model,
			] );
		}
	}

	/**
	 * Updates an existing Log model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionUpdate( $id ) {
		$model = $this->findModel( $id );

		if ( $model->load( Yii::$app->request->post() ) && $model->save() ) {
			return $this->redirect( [ 'view', 'id' => $model->id ] );
		} else {
			return $this->render( 'update', [
				'model' => $model,
			] );
		}
	}

	/**
	 * Deletes an existing Log model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionDelete( $id ) {
		$this->findModel( $id )->delete();

		return $this->redirect( [ 'index' ] );
	}

	/**
	 * Finds the Log model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 *
	 * @param integer $id
	 *
	 * @return Log the loaded model
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	protected function findModel( $id ) {
		if ( ( $model = Log::findOne( $id ) ) !== null ) {
			return $model;
		} else {
			throw new NotFoundHttpException( 'The requested page does not exist.' );
		}
	}

	/**
	 * Clear all the logs stored
	 *
	 * @return \yii\web\Response
	 */
	public function actionClear() {
		$rows_deleted = Log::deleteAll();

		Yii::$app->session->setFlash( Growl::TYPE_SUCCESS, $rows_deleted . ' Registros Eliminados' );

		return $this->redirect( Url::to( [ '//log' ] ) );
	}
}
