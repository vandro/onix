<?php
/**
 * Created by BaseBackend development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 26/10/15
 * Time: 10:28 PM
 */

namespace backend\controllers;

use Yii;
use common\controllers\BackController;
use zxbodya\yii2\elfinder\ConnectorAction;

class ElFinderController extends BackController
{
    public function actions()
    {
        return [
            'connector'     => [
                'class'    => ConnectorAction::className(),
                'settings' => [
                    'root'       => Yii::getAlias('@frontend') . '/web/uploads/',
                    'URL'        => Yii::$app->urlManagerFrontEnd->baseUrl . '/uploads/',
                    'rootAlias'  => Yii::t('back', 'Directorio Principal'),
                    'mimeDetect' => 'none'
                ]
            ],
            'back-connector' => [
                'class'    => ConnectorAction::className(),
                'settings' => [
                    'root'       => Yii::getAlias('@backend') . '/web/uploads/',
                    'URL'        => Yii::$app->urlManager->baseUrl . '/uploads/',
                    'rootAlias'  => Yii::t('back', 'Directorio Principal'),
                    'mimeDetect' => 'none'
                ]
            ]
        ];
    }
}