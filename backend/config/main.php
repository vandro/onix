<?php
$params = array_merge(
    require( __DIR__ . '/../../common/config/params.php' ),
    require( __DIR__ . '/../../common/config/params-local.php' ),
    require( __DIR__ . '/params.php' ),
    require( __DIR__ . '/params-local.php' )
);

return [
    'id'                  => 'app-backend',
    'basePath'            => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap'           => ['log'],
    'modules'             => [
        'admin' => [
            'class'    => \mdm\admin\Module::className(),
            'viewPath' => dirname(dirname(__DIR__)) . '/backend/modules/onix/admin/views'
        ]
    ],
    'components'          => [
        'session'      => [
            'class' => \yii\web\DbSession::className(),
        ],
        'user'         => [
            'identityClass'   => 'common\models\User',
            'enableAutoLogin' => false,
        ],
        'log'          => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets'    => [
                [
                    'class'  => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'authManager'  => [
            'class' => 'yii\rbac\DbManager',
        ],
    ],
    'as access'           => [
        'class' => \mdm\admin\components\AccessControl::className()
    ],
    'params'              => $params,
];
