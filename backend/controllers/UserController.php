<?php

namespace backend\controllers;

use common\models\PasswordResetRequestForm;
use kartik\growl\Growl;
use Yii;
use common\models\User;
use common\models\SearchUser;
use common\controllers\BackController;
use yii\helpers\VarDumper;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends BackController
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class'   => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel  = new SearchUser();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel'  => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single User model.
     *
     * @param integer $id
     *
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new User();

        if (isset( $_POST['User'] )) {

            foreach ($_POST['User'] as $key => $value) {
                $model->{$key} = $_POST['User'][$key];
            }

            $model->setPassword(Yii::$app->security->generateRandomString(12));

            $model->new_image = UploadedFile::getInstance($model, 'new_image');

            if ( ! is_null($model->new_image)) {
                $save_path_route = realpath(dirname(__FILE__) . '/../web/uploads/') . '/';
                $file_name       = 'profileImg_' . time() . '.' . $model->new_image->extension;
                $full_route_name = $save_path_route . $file_name;
                $model->picture  = $file_name;

                $model->new_image->saveAs($full_route_name);
            }

            if ( ! $model->validate($model->attributes)) {
                return $this->render('create', [
                    'model' => $model,
                ]);
            } else {
                $model->save(false);
            }

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     *
     * @param integer $id
     *
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $model->new_image = Yii::getAlias('@web') . '/uploads/' . $model->picture;

        if (isset( $_POST['User'] )) {

            foreach ($_POST['User'] as $key => $value) {
                if (isset( $model->{$key} )) {
                    $model->{$key} = $_POST['User'][$key];
                }
            }

            $model->new_image = UploadedFile::getInstance($model, 'new_image');

            if ( ! is_null($model->new_image)) {
                $save_path_route = realpath(dirname(__FILE__) . '/../web/uploads/') . '/';
                $file_name       = 'profileImg_' . time() . '.' . $model->new_image->extension;
                $full_route_name = $save_path_route . $file_name;
                $model->picture  = $file_name;

                $model->new_image->saveAs($full_route_name);
            }

            if ( ! $model->validate($model->attributes)) {

                return $this->render('update', [
                    'model' => $model,
                ]);
            } else {
                $model->save();
            }

            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     *
     * @param integer $id
     *
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionChangePassword($email)
    {
        $model = new PasswordResetRequestForm();

        $model->email = $email;

        if ($model->validate()) {

            if ($model->sendEmail()) {
                Yii::$app->getSession()->setFlash(Growl::TYPE_SUCCESS,
                    'Check the email ' . $email . ' for further instructions.');
            } else {
                Yii::$app->getSession()->setFlash(Growl::TYPE_DANGER,
                    'Sorry, we are unable to reset password for email provided.');
            }
        }

        $this->redirect(['index']);
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     *
     * @param integer $id
     *
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (( $model = User::findOne($id) ) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
