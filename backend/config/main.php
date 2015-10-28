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
        'session'            => [
            'class' => \yii\web\DbSession::className(),
        ],
        'user'               => [
            'identityClass'   => 'common\models\User',
            'enableAutoLogin' => false,
        ],
        'log'                => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets'    => [
                [
                    'class'  => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler'       => [
            'errorAction' => 'site/error',
        ],
        'authManager'        => [
            'class'        => 'yii\rbac\DbManager',
            'defaultRoles' => ['Guest']
        ],
        'urlManager'         => [
            'class'                        => \codemix\localeurls\UrlManager::className(),
            'showScriptName'               => false,
            'enablePrettyUrl'              => true,
            'languages'                    => [
                'es',
                'en'
            ],
            'enableDefaultLanguageUrlCode' => true,
            'enableLanguagePersistence'    => true,
        ],
        'urlManagerFrontEnd' => [
            'class'           => 'yii\web\urlManager',
            'baseUrl'         => '/' . end(explode('/', realpath(__DIR__ . '/../../'))),
            'enablePrettyUrl' => false,
            'showScriptName'  => false
        ],
        'i18n'               => [
            'translations' => [
                '*'          => [
                    'class'                 => yii\i18n\DbMessageSource::className(),
                    'forceTranslation'      => true,
                    'sourceLanguage'        => 'es',
                    'on missingTranslation' => [
                        'common\components\TranslationEventHandler',
                        'handleMissingTranslation'
                    ],
                ],
                'rbac-admin' => [
                    'class'                 => yii\i18n\DbMessageSource::className(),
                    'forceTranslation'      => true,
                    'on missingTranslation' => [
                        'common\components\TranslationEventHandler',
                        'handleMissingTranslation'
                    ],
                ]
            ],
        ],
    ],
    'as access'           => [
        'class'        => \backend\modules\onix\admin\components\AccessControl::className(),
        'allowActions' => [
            'site/login',
            'site/request-password-reset',
            'site/reset-password',
        ]
    ],
    'params'              => $params,
];
