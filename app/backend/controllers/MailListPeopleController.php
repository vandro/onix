<?php

namespace backend\controllers;

use Yii;
use common\models\MailList;
use common\models\MailListPeople;
use yii\web\NotFoundHttpException;
use common\controllers\BackController;
use backend\models\SearchMailListPeople;

/**
 * MailListPeopleController implements the CRUD actions for MailListPeople model.
 */
class MailListPeopleController extends BackController {

    /**
     * Lists all MailListPeople models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new SearchMailListPeople();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single MailListPeople model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new MailListPeople model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new MailListPeople();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

            //Linkea con las listas
            if (isset($_POST['MailListPeople']['mailLists'])) {
                $lists = $_POST['MailListPeople']['mailLists'];

                foreach ($lists as $list) {

                    try {
                        $model->link('mailLists', MailList::findOne($list));
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
     * Updates an existing MailListPeople model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {

            //Linkea con las listas
            if (isset($_POST['MailListPeople']['mailLists']) && !empty($_POST['MailListPeople']['mailLists'])) {
                $lists = $_POST['MailListPeople']['mailLists'];

                //Primero limpia todo lo que hay
                $model->unlinkAll('mailLists', true);

                foreach ($lists as $list) {

                    try {
                        $model->link('mailLists', MailList::findOne($list));
                    } catch (Exception $e) {
                        continue;
                    }
                }
            } else {

                //Si no hay listas limpia toda relación
                $model->unlinkAll('mailLists', true);
            }

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing MailListPeople model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $model = $this->findModel($id);

        $model->unlinkAll('mailLists', true);

        $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the MailListPeople model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MailListPeople the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = MailListPeople::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
