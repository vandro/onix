<?php

return [
    'modules'    => [
    ],
    'components' => [
        'db'           => [
            'class'    => 'yii\db\Connection',
            'dsn'      => 'mysql:host=localhost;dbname=onix_base',
            'username' => 'root',
            'password' => '1995',
            'charset'  => 'utf8',
        ],
        'assetManager' => [
            'forceCopy'       => YII_DEBUG,
            'appendTimestamp' => YII_DEBUG
        ]
    ],
];
