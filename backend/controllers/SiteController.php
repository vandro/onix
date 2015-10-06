<?php
namespace backend\controllers;

use Yii;
use yii\filters\AccessControl;
use common\models\LoginForm;
use common\models\PasswordResetRequestForm;
use yii\filters\VerbFilter;
use yii\web\Response;
use yii\widgets\ActiveForm;
use common\controllers\BackController;

/**
 * Site controller
 */
class SiteController extends BackController
{
    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        
        if (Yii::$app->request->isAjax && $model->load(Yii::$app->request->post())) {
            Yii::$app->response->format = Response::FORMAT_JSON;
            return ActiveForm::validate($model);
        }elseif ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $this->layout = 'login';
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequestForm();
        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->getSession()->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->getSession()->setFlash('danger', 'Sorry, we are unable to reset password for email provided.');
            }
        }

        $this->layout = 'login';
        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

//    public function actionRegister()
//    {
//        $model = new User();
//
//        $model->username = 'admin';
//        $model->email = 'admin@admin.com';
//        $model->setPassword('admin');
//        $model->status = User::STATUS_ACTIVE;
//
//        if($model->save()){
//            echo "Registered :)";
//        }else{
//            echo VarDumper::dump($model->getErrors());
//        }
//    }
}
