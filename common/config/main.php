<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'i18n' => [
            'class'=> Zelenin\yii\modules\I18n\components\I18N::className(),
            'languages' => ['es', 'en'],
            'translations' => [
                'app' => [
                    'class' => yii\i18n\DbMessageSource::className(),
                ],
                'back' => [
                    'class' => yii\i18n\DbMessageSource::className()
                ]
            ]
        ],
    ],
];
