<?php

namespace backend\controllers;

use Yii;
use common\models\Barrio;
use backend\models\SearchBarrio;
use common\controllers\BackController;
use yii\db\Query;
use yii\web\NotFoundHttpException;
use yii\web\Response;

/**
 * BarrioController implements the CRUD actions for Barrio model.
 */
class BarrioController extends BackController {
	/**
	 * Lists all Barrio models.
	 * @return mixed
	 */
	public function actionIndex() {
		$searchModel  = new SearchBarrio();
		$dataProvider = $searchModel->search(Yii::$app->request->queryParams);

		return $this->render('index', [
			'searchModel'  => $searchModel,
			'dataProvider' => $dataProvider,
		]);
	}

	/**
	 * Displays a single Barrio model.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionView($id) {
		return $this->render('view', [
			'model' => $this->findModel($id),
		]);
	}

	/**
	 * Creates a new Barrio model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 * @return mixed
	 */
	public function actionCreate() {
		$model = new Barrio();

		if ($model->load(Yii::$app->request->post()) && $model->save()) {
			return $this->redirect(['view', 'id' => $model->id]);
		} else {
			return $this->render('create', [
				'model' => $model,
			]);
		}
	}

	/**
	 * Updates an existing Barrio model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionUpdate($id) {
		$model = $this->findModel($id);

		if ($model->load(Yii::$app->request->post()) && $model->save()) {
			return $this->redirect(['view', 'id' => $model->id]);
		} else {
			return $this->render('update', [
				'model' => $model,
			]);
		}
	}

	/**
	 * Deletes an existing Barrio model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 *
	 * @param integer $id
	 *
	 * @return mixed
	 */
	public function actionDelete($id) {
		$this->findModel($id)->delete();

		return $this->redirect(['index']);
	}

	/**
	 * Finds the Barrio model based on its primary key value.
	 * If the model is not found, a 404 HTTP exception will be thrown.
	 *
	 * @param integer $id
	 *
	 * @return Barrio the loaded model
	 * @throws NotFoundHttpException if the model cannot be found
	 */
	protected function findModel($id) {
		if (($model = Barrio::findOne($id)) !== null) {
			return $model;
		} else {
			throw new NotFoundHttpException('The requested page does not exist.');
		}
	}

	/**
	 * @param null $q
	 * @param null $id
	 *
	 * @return array
	 *
	 *
	 * Método para búsqueda ajax de un Barrio
	 */
	public function actionSearch($q = null, $id = null) {
		\Yii::$app->response->format = Response::FORMAT_JSON;
		$out                         = ['results' => ['id' => '', 'text' => '']];

		if ( ! is_null($q)) {
			$query = new Query();
			$query->select('id, nombre AS text')
			      ->from('barrio')
			      ->where(['like', 'nombre', $q])
			      ->limit(20);
			$command        = $query->createCommand();
			$data           = $command->queryAll();
			$out['results'] = array_values($data);
		} elseif ($id > 0) {
			$out['results'] = ['id' => $id, 'text' => Barrio::find($id)->nombre];
		}

		return $out;
	}
}
