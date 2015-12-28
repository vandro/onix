<?php

return [
    'language'   => 'es',
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules'    => [],
    'components' => [
        'db' => [
            'class'             => 'yii\db\Connection',
            'dsn'               => 'mysql:host=localhost;dbname=onix_base',
            'username'          => 'root',
            'password'          => '1995',
            'charset'           => 'utf8',
            'enableSchemaCache' => true,
            'emulatePrepare'    => true
        ],
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
