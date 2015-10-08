<?php

return [
    'language'   => 'es-co',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules'    => [],
    'components' => [
        'cache'      => [
            'class' => 'yii\caching\FileCache',
        ],
        'i18n'       => [
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
        'urlManager' => [
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
        'log'        => [
            'targets' => [
                [
                    'class'  => \yii\log\DbTarget::className(),
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'mailer'     => [
            'class' => \common\components\OnixMailer::className(),
        ],
    ],
];
