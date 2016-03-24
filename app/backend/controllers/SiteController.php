<?php
namespace backend\controllers;

use Yii;
use yii\web\Response;
use kartik\growl\Growl;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\LoginForm;
use backend\models\ResetPasswordForm;
use common\controllers\BackController;
use backend\models\PasswordResetRequestForm;

/**
 * Site controller
 */
class SiteController extends BackController
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            'access' => [
                'allowActions' => [
                    'login',
                    'request-password-reset',
                    'reset-password'
                ],
            ],
        ]);
    }

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
        } elseif ($model->load(Yii::$app->request->post()) && $model->login()) {
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
                Yii::$app
                    ->session
                    ->setFlash( Growl::TYPE_SUCCESS, Yii::t( 'back', 'Revisa tu bandeja de entrada y sigue las instrucciones' ) );

                return $this->goHome();
            } else {
                Yii::$app
                    ->session
                    ->setFlash( Growl::TYPE_DANGER, Yii::t( 'back', 'Lo sentimos, no se pudieron enviar las instrucciones al correo indicado.' ) );
            }
        }

        if (Yii::$app->user->isGuest) {
            $this->layout = 'login';
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPasswordForm($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->request->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->session->setFlash(Growl::TYPE_SUCCESS, Yii::t('back', 'La nueva contraseña ha sido guardada.'));

            return $this->goHome();
        }

        if (Yii::$app->user->isGuest) {
            $this->layout = 'login';
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }
}
