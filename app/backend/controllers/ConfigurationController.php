<?php

namespace backend\controllers;

use Yii;
use kartik\widgets\Growl;
use yii\base\DynamicModel;
use yii\data\ActiveDataProvider;
use common\models\EmailTemplate;
use backend\models\Configuration;
use yii\web\NotFoundHttpException;
use common\controllers\BackController;

/**
 * ConfigurationController implements the CRUD actions for Configuration model.
 */
class ConfigurationController extends BackController
{
    /**
     * Lists all Configuration models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Configuration::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Configuration model.
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
     * Creates a new Configuration model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Configuration();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Configuration model.
     * If update is successful, the browser will be redirected to the 'view' page.
     *
     * @param integer $id
     *
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            /**
             * Carga el email con estilos
             */
            $model->template = $this->renderFile('@backend/views/templates/default_email.php', [
                'content' => $model->template
            ]);

            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Configuration model.
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

    /**
     * Finds the Configuration model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     *
     * @param integer $id
     *
     * @return Configuration the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (( $model = Configuration::findOne($id) ) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    /**
     * View the email template saved in DB
     */
    public function actionViewEmailTemplate()
    {
        $configurationModel = Configuration::find()->one();
        $content            = '';

        if ( ! is_null($configurationModel)) {
            $content = $configurationModel->template;
        }

        return $this->renderFile('@backend/views/templates/default_email.php', [
            'content' => $content
        ]);
    }

    /**
     * Send test email with the email template
     */
    public function actionSendTestEmail()
    {
        $model = new DynamicModel(['email']);
        $model->addRule(['email'], 'required');
        $model->addRule(['email'], 'email');

        if (isset( $_POST['DynamicModel'] )) {
            $model->attributes = $_POST['DynamicModel'];

            if ($model->validate()) {
                /**
                 * @var Configuration $template_model
                 */

                $html_text      = Yii::t('back', 'This is a test mail');
                $template_model = Configuration::find()->one();

                if ( ! is_null($template_model)) {

                    $sent_success = \Yii::$app->mailer->sendWithTemplate($model->email,
                        \Yii::t('app', 'Test email for ') . $model->email,
                        $html_text
                    );

                    if ($sent_success) {
                        Yii::$app->getSession()->setFlash(Growl::TYPE_SUCCESS, Yii::t('back', 'The test mail was sent successfully'));
                        $this->redirect('index');
                    }
                }
            }
        }

        return $this->render('formSendTestEmail', [
            'model' => $model
        ]);
    }
}

