<?php

return [
    'language'   => 'es',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules'    => [],
    'components' => [
        'cache'  => [
            'class' => 'yii\caching\FileCache',
        ],
        'log'    => [
            'targets' => [
                [
                    'class'  => \yii\log\DbTarget::className(),
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'mailer' => [
            'class' => \common\components\OnixMailer::className(),
        ],
    ],
];
