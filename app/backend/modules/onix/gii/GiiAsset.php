<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 28/10/15
 * Time: 07:44 AM
 */

namespace backend\modules\onix\gii;


use yii\web\AssetBundle;

class GiiAsset extends AssetBundle {
	public $sourcePath = '@backend/modules/onix/gii/assets';
//	public $basePath   = '@backend/modules/onix/gii/assets';
	public $css        = [
		'main.css',
	];
	public $js         = [
		'gii.js',
	];
	public $depends    = [
		'yii\web\YiiAsset',
		'yii\bootstrap\BootstrapAsset',
		'yii\bootstrap\BootstrapPluginAsset',
		'yii\gii\TypeAheadAsset',
	];
}