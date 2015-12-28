<?php
$config = [];

if ( ! YII_ENV_TEST) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][]      = 'debug';
    $config['modules']['debug'] = 'yii\debug\Module';

    $config['components']['assetManager']['forceCopy'] = true;
}

return $config;
