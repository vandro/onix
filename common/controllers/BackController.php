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

use backend\models\Configuration;
use Yii;
use mdm\admin\components\AccessControl;
use yii\filters\VerbFilter;


class BackController extends OnixController
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
            ],
            'verbs'  => [
                'class'   => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function __construct($id, $module, $config = [])
    {
        parent::__construct($id, $module, $config = []);

        //Lee la configuracion una sola vez
        $global_configuration = Configuration::find()->one();

        if ( ! is_null($global_configuration)) {
            Yii::$app->params['global'] = $global_configuration->attributes;
        }
    }
}