<?php
namespace api\modules\v1\controllers;

use Yii;
use yii\web\Response;
use yii\filters\auth\HttpBearerAuth;
use common\controllers\WsController;

/**
 * Site controller
 */
class SiteController extends WsController
{
    public $modelClass = 'api\modules\v1\models\Configuration';

    /**
     * Uncomment to enable HttpBearerAuth filter (OAuth 2)
     *
     * @return array
     */
    /*public function behaviors()
    {
        return [
            'bearerAuth' => [
                'class' => HttpBearerAuth::className(),
            ],
        ];
    }*/

    public function actionIndex()
    {
        Yii::$app->response = Response::FORMAT_JSON;

        return ['Hola :)'];
    }

    public function actionError()
    {
        Yii::$app->response = Response::FORMAT_JSON;

        return ['Hola :)'];
    }
}
