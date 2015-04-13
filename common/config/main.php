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
                    'forceTranslation'=>true,
                    'sourceLanguage' => 'es-CO',
                    'on missingTranslation' => ['common\components\TranslationEventHandler', 'handleMissingTranslation'],
                ]
            ],
        ],
    ],
];
