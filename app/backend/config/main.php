<?php
$params = array_merge(
	require(__DIR__ . '/../../common/config/params.php'),
	require(__DIR__ . '/params.php'),
	(YII_DEBUG ? require(__DIR__ . '/../../common/config/params-local.php') : []),
	(YII_DEBUG ? require(__DIR__ . '/params-local.php') : [])
);

return [
	'id'                  => 'app-backend',
	'basePath'            => dirname(__DIR__),
	'controllerNamespace' => 'backend\controllers',
	'bootstrap'           => ['log'],
	'aliases'             => [
		'@front' => __DIR__ . '/../..'
	],
	'modules'             => [
		'admin' => [
			'class'    => \mdm\admin\Module::className(),
			'viewPath' => dirname(dirname(__DIR__)) . '/backend/modules/onix/admin/views'
		]
	],
	'components'          => [
		'request'            => [
			'enableCsrfValidation' => YII_DEBUG ? false : true,
			'cookieValidationKey'  => 'XVV_QDR86twXZLqsbHnTehqwdzeALP8M',
		],
		'session'            => [
			// unique for backend
			'name'     => '_backendSessionId',
			// a temporary folder on backend
			'savePath' => dirname(__DIR__) . DIRECTORY_SEPARATOR . 'runtime',
		],
		'user'               => [
			'identityClass'   => \backend\models\User::className(),
			'enableAutoLogin' => true,
		],
		'errorHandler'       => [
			'errorAction' => 'site/error',
		],
		'authManager'        => [
			'class'        => \mdm\admin\components\DbManager::className(),
			'defaultRoles' => ['Guest']
		],
		'urlManager'         => [
			'class'           => \yii\web\UrlManager::className(),
			'showScriptName'  => true,
			'enablePrettyUrl' => true,
		],
		'urlManagerFrontEnd' => [
			'class'           => \yii\web\UrlManager::className(),
			'enablePrettyUrl' => true,
			'showScriptName'  => false
		],
		'i18n'               => [
			'translations' => [
				'back' => [
					'class'                 => yii\i18n\DbMessageSource::className(),
					'enableCaching'         => true,
					'cachingDuration'       => (3600 * 24), // The messages cache will refresh once per day
					'forceTranslation'      => true,
					'sourceLanguage'        => 'es',
					'on missingTranslation' => [
						'common\components\TranslationEventHandler',
						'handleMissingTranslation'
					],
				],
			],
		],
		'view'               => [
			'theme' => [
				'basePath' => '@backend/themes/adminLTE',
				'baseUrl'  => '@web/themes/adminLTE',
			],
		],
	],
	'as access'           => [
		'class'        => \backend\modules\onix\admin\components\AccessControl::className(),
		'allowActions' => [
			'site/login',
			'site/request-password-reset',
			'site/reset-password',
		]
	],
	'params'              => $params,
];
