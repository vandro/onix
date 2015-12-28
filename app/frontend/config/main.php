<?php
$params = array_merge(
    require( __DIR__ . '/../../common/config/params.php' ),
    require( __DIR__ . '/params.php' )
);


//Si esta en modo debug, carga los parámetros locales
if (YII_DEBUG) {
    $params = array_merge($params, [
        require( __DIR__ . '/../../common/config/params-local.php' ),
        require( __DIR__ . '/params-local.php' )
    ]);
}

return [
    'id'                  => 'app-frontend',
    'basePath'            => dirname(__DIR__),
    'bootstrap'           => ['log'],
    'controllerNamespace' => 'frontend\controllers',
    'components'          => [
        'request'      => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'enableCsrfValidation' => YII_DEBUG ? false : true,
            'cookieValidationKey'  => 'HqKefkLpWwAmKNGm-x98m7cWzGEkhPcQ',
        ],
        'user'         => [
            'identityClass'   => 'common\models\User',
            'enableAutoLogin' => true,
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
        'view'         => [
            'theme' => [
                'basePath' => '@frontend/themes/web',
                'baseUrl'  => '@web/themes/web',
            ],
        ],
    ],
    'params'              => $params,
];
