<?php
$config = [ ];

/**
 * LOAD GII CODE GENERATORS WITH CUSTOM TEMPLATES FOR THE CURRENT CMS THEME
 */
$config['bootstrap'][]    = 'gii';
$config['modules']['gii'] = [
	'class'      => \yii\gii\Module::className(),
	'generators' => [
		'crud'  => [
			'class'               => \yii\gii\generators\crud\Generator::className(),
			'templates'           => [
				'onix' => '@backend/modules/onix/gii/crud/default'
			],
			'modelClass'          => 'common\models',
			'controllerClass'     => 'backend\controllers\Controller',
			'viewPath'            => '@backend/views/',
			'baseControllerClass' => 'common\controllers\BackController',
			'searchModelClass'    => 'backend\models\Search',
			'template'            => 'onix',
			'enableI18N'          => false,
			'messageCategory'     => 'back'
		],
		'model' => [
			'class'           => \backend\modules\onix\gii\model\Generator::className(),
			'ns'              => 'common\models',
			'enableI18N'      => false,
			'messageCategory' => 'back'
		]
	],
	'layoutPath' => '@backend/views/layouts',
];


/**
 * ALLOW ACCESS TO DEBUG TOOLBAR TO THE RBAC
 */
$config['as access'] = [
	'class'        => \backend\modules\onix\admin\components\AccessControl::className(),
	'allowActions' => [
		'debug/default/toolbar'
	]
];

return $config;
