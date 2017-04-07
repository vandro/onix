<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 4/6/17
 * Time: 9:24 PM
 */

$active_theme_path        = Yii::$app->view->theme->basePath;
$active_theme_config_file = $active_theme_path . '/theme.json';
$theme_info               = null;

if (file_exists($active_theme_config_file)) {
	$theme_info = json_decode(file_get_contents($active_theme_config_file));
}

if (is_null($theme_info)) {
	echo "Aún no hay un Tema activo";
} else {
	echo "El tema activo es " . $theme_info->name;
}
?>