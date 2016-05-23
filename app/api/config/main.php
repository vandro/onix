<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/params.php'),
    (YII_DEBUG ? require(__DIR__ . '/../../common/config/params-local.php') : []),
    (YII_DEBUG ? require(__DIR__ . '/params-local.php') : [])
);

return [
    'id'                  => 'app-api',
    'basePath'            => dirname(__DIR__),
    'bootstrap'           => ['log'],
    'controllerNamespace' => 'api\controllers',
    'components'          => [
        'request'    => [
            'parsers'             => [
                'application/json' => 'yii\web\JsonParser',
            ],
            'cookieValidationKey' => 'HqKefkLpWwAmKNGm-x98m7cWzGEkhPcQ',
        ],
        'response'   => [
            'format'  => yii\web\Response::FORMAT_JSON,
            'charset' => 'UTF-8',
        ],
        'user'       => [
            'identityClass'   => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'i18n'       => [
            'translations' => [
                'api' => [
                    'class'                 => yii\i18n\DbMessageSource::className(),
                    'enableCaching'         => true,
                    'cachingDuration'       => (3600 * 24), // The messages cache will refresh once per day
                    'forceTranslation'      => true,
                    'sourceLanguage'        => 'es',
                    'on missingTranslation' => [
                        'common\components\TranslationEventHandler',
                        'handleMissingTranslation'
                    ],
                ],
            ],
        ],
        'urlManager' => [
            'enablePrettyUrl'     => true,
            'enableStrictParsing' => true,
            'showScriptName'      => false,
            'rules'               => [
                [
                    'class'      => 'yii\rest\UrlRule',
                    'pluralize'  => false,
                    'controller' => [
                        'v1/site'
                    ],
                ],
            ],
        ]
    ],
    'modules'             => [
        'v1' => [
            'basePath' => '@api/modules/v1',
            'class'    => 'api\modules\v1\Module',
        ],
    ],
    'params'              => $params,
];
