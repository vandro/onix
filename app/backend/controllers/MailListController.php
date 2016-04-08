<?php

namespace backend\controllers;

use Yii;
use common\models\MailList;
use common\models\MailListPeople;
use backend\models\SearchMailList;
use common\controllers\BackController;
use yii\web\NotFoundHttpException;

/**
 * MailListController implements the CRUD actions for MailList model.
 */
class MailListController extends BackController {

    /**
     * Lists all MailList models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new SearchMailList();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single MailList model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new MailList model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new MailList();

        if ($model->load(Yii::$app->request->post()) && $model->createConstName() && $model->save()) {

            //Linkea con las personas
            if (isset($_POST['MailList']['mailListPeoples'])) {
                $people = $_POST['MailList']['mailListPeoples'];

                foreach ($people as $person) {

                    try {
                        $person->link('mailListPeoples', MailListPeople::findOne($person));
                    } catch (Exception $e) {
                        continue;
                    }
                }
            }

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing MailList model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

            //Linkea con las listas
            if (isset($_POST['MailList']['mailListPeoples']) && !empty($_POST['MailList']['mailListPeoples'])) {
                $people = $_POST['MailList']['mailListPeoples'];

                //Primero limpia todo lo que hay
                $model->unlinkAll('mailListPeoples', true);

                foreach ($people as $person) {

                    try {
                        $model->link('mailListPeoples', MailListPeople::findOne($person));
                    } catch (Exception $e) {
                        continue;
                    }
                }
            } else {

                //Si no hay listas limpia toda relación
                $model->unlinkAll('mailListPeoples', true);
            }

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing MailList model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $model = $this->findModel($id);

        $model->unlinkAll('mailListPeoples', true);

        $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the MailList model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MailList the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = MailList::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
