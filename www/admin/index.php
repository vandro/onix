<?php
$localhost = $_SERVER['REMOTE_ADDR'] == '127.0.0.1' ? true : false;

defined('YII_DEBUG') or define('YII_DEBUG', $localhost);
defined('YII_ENV') or define('YII_ENV', $localhost ? 'dev' : 'prod');

require(__DIR__ . '/../../app/vendor/autoload.php');
require(__DIR__ . '/../../app/vendor/yiisoft/yii2/Yii.php');
require(__DIR__ . '/../../app/common/config/bootstrap.php');
require(__DIR__ . '/../../app/backend/config/bootstrap.php');

$config = yii\helpers\ArrayHelper::merge(
    require(__DIR__ . '/../../app/common/config/main.php'),
    require(__DIR__ . '/../../app/backend/config/main.php'),
    (YII_DEBUG ? require(__DIR__ . '/../../app/common/config/main-local.php') : []),
    (YII_DEBUG ? require(__DIR__ . '/../../app/backend/config/main-local.php') : [])
);

//If debug mode and localhost will load local config
if (YII_DEBUG && $localhost) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
}

$application = new yii\web\Application($config);
$application->run();
