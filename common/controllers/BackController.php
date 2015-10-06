<?php
/**
 * Created by BaseBackend development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 8/09/15
 * Time: 02:58 PM
 *
 * Controlador base para el backend
 *
 * @var $this \common\controllers\BackController
 */

namespace common\controllers;

use Yii;
use mdm\admin\components\AccessControl;
use yii\filters\VerbFilter;


class BackController extends OnixController
{
    /**
     * @inheritdoc
     */
    /*public function beforeAction($action)
    {
        if (parent::beforeAction($action)) {
            if (Yii::$app->user->isGuest && Yii::$app->controller->action->id != 'login') {
                $this->redirect(['//site/login']);
            }

            return true;
        }

        return false;
    }*/

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }
}