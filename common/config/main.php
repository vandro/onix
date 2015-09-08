<?php

return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'i18n' => [
            'translations' => [
                '*' => [
                    'class' => yii\i18n\DbMessageSource::className(),
                    'forceTranslation' => true,
                    'sourceLanguage' => 'es-CO',
                    'on missingTranslation' => ['common\components\TranslationEventHandler', 'handleMissingTranslation'],
                ]
            ],
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            // Disable index.php
//            'showScriptName' => false,
            // Disable r= routes
//            'enablePrettyUrl' => true,
            'rules' => [
//                '<controller:\w+>/' => 'backend/<controller>/admin  ',
//                '<controller:\w+>/<action:\w+>' => 'backend/<controller>/<action>',
//                '<controller:\w+>/<id:\d+>' => 'backend/<controller>/view',
//                '<controller:\w+>/<action:\w+>/<id:\d+>' => 'backend/<controller>/<action>',
            ],
        ],
    ],
];
