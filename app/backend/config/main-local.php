<?php
$config = [];

if (YII_DEBUG) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][]      = 'debug';
    $config['modules']['debug'] = 'yii\debug\Module';
    $config['bootstrap'][]      = 'gii';
    $config['modules']['gii']   = [
        'class'      => 'yii\gii\Module',
        'generators' => [
            'crud'  => [
                'class'               => 'yii\gii\generators\crud\Generator',
                'templates'           => [
                    'onix' => '@backend/modules/onix/gii/crud/default'
                ],
                'modelClass'          => 'common\models',
                'controllerClass'     => 'backend\controllers\Controller',
                'viewPath'            => '@backend/views/',
                'baseControllerClass' => 'common\controllers\BackController',
                'searchModelClass'    => 'backend\models\Search',
                'template'            => 'onix',
                'enableI18N'          => true,
                'messageCategory'     => 'back'
            ],
            'model' => [
                'class'           => 'yii\gii\generators\model\Generator',
                'ns'              => 'common\models',
                'enableI18N'      => true,
                'messageCategory' => 'back'
            ]
        ],
        'layoutPath' => '@backend/views/layouts'
    ];
}

return $config;
