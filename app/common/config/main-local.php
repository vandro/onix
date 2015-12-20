<?php

return [
    'modules'    => [
    ],
    'components' => [
        'db' => [
            'class'    => 'yii\db\Connection',
            'dsn'      => 'mysql:host=localhost;dbname=db-name',
            'username' => 'user',
            'password' => 'password',
            'charset'  => 'utf8',
        ]
    ],
];
