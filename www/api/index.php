<?php
$allowed_as_localhost = [
    '127.0.0.1',
    '::1'
];

$localhost = in_array($_SERVER['REMOTE_ADDR'], $allowed_as_localhost);

defined('YII_DEBUG') or define('YII_DEBUG', $localhost);
defined('YII_ENV') or define('YII_ENV', $localhost ? 'dev' : 'prod');

//If debug mode and localhost will load local config
if (YII_DEBUG && $localhost) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
}

require(__DIR__ . '/../../vendor/autoload.php');
require(__DIR__ . '/../../vendor/yiisoft/yii2/Yii.php');
require(__DIR__ . '/../../app/common/config/bootstrap.php');
require(__DIR__ . '/../../app/api/config/bootstrap.php');

$config = yii\helpers\ArrayHelper::merge(
    require(__DIR__ . '/../../app/common/config/main.php'),
    require(__DIR__ . '/../../app/api/config/main.php'),
    (YII_DEBUG ? require(__DIR__ . '/../../app/common/config/main-local.php') : []),
    (YII_DEBUG ? require(__DIR__ . '/../../app/api/config/main-local.php') : [])
);

$application = new yii\web\Application($config);
$application->run();
