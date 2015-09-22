<?php

return [
    'language'   => 'es-co',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules'    => [],
    'components' => [
        'cache'       => [
            'class' => 'yii\caching\FileCache',
        ],
        'i18n'        => [
            'translations' => [
                '*'          => [
                    'class'                 => yii\i18n\DbMessageSource::className(),
                    'forceTranslation'      => true,
                    'sourceLanguage'        => 'es-CO',
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
        'urlManager'  => [
            'class'                        => 'codemix\localeurls\UrlManager',
            'showScriptName'               => false,
            'enablePrettyUrl'              => true,
            'languages'                    => [
                'en-us',
                'es-co'
            ],
            'enableDefaultLanguageUrlCode' => true,
            'enableLanguagePersistence'    => true,
        ],
        'log'         => [
            'targets' => [
                [
                    'class'  => 'yii\log\DbTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'mailer'      => [
            'class'     => 'common\components\OnixMailer',
            'transport' => [
                'class' => 'Swift_SmtpTransport'
            ],
        ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],
    ],
    'as access'  => [
        'class'        => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            '*',
        ]
    ],
];
