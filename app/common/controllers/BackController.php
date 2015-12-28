<?php
/**
 * Created by OnixLabs development team.
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
use backend\modules\onix\admin\components\AccessControl;
use yii\filters\VerbFilter;


class BackController extends OnixController
{
    /**
     * BackController constructor.
     */
    public function __construct($id, $module, $config = [])
    {
        parent::__construct($id, $module, $config = []);

        $frontEnd_url_config = [
            'urlManagerFrontEnd' => [
                'class'           => 'yii\web\urlManager',
                'baseUrl'         => Yii::$app->params['global']['site_url'],
                'enablePrettyUrl' => false,
                'showScriptName'  => false
            ]
        ];

        Yii::$app->setComponents($frontEnd_url_config);
    }


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
}
