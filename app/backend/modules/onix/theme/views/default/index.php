<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 4/6/17
 * Time: 9:24 PM
 */

use yii\helpers\Html;

$this->title                   = 'Temas';
$this->params['breadcrumbs'][] = $this->title;

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

$grav_url = null;

if ($theme_info->yiiDeveloperImageUrl == '') {
	$email    = $theme_info->yiiDeveloperEmail;
	$default  = "https://www.somewhere.com/homestar.jpg";
	$size     = 128;
	$grav_url = "https://www.gravatar.com/avatar/" . md5(strtolower(trim($email))) . "?d=" . urlencode($default) . "&s=" . $size;
} else {
	$grav_url = $theme_info->yiiDeveloperImageUrl;
}
?>
<img src="" alt="">
<div class="row">
    <div class="col-md-12">
        <div class="menu-index box box-primary">
            <div class="box-header with-border">
				<?= Html::a('Agregar Tema', ['create'],
					['class' => 'btn btn-success']) ?>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4"></div>
                </div>
				<?php
				/*				\yii\widgets\Pjax::begin();
								echo GridView::widget([
									'dataProvider' => $dataProvider,
									'filterModel'  => $searchModel,
									'columns'      => [
										'id',
										'codigo',
										'nombre',
										'comuna',
										'municipio_code',

										['class' => 'yii\grid\ActionColumn'],
									],
								]);
								\yii\widgets\Pjax::end();
								*/ ?>
            </div>
        </div>
    </div>
</div>