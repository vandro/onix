<?php

use yii\helpers\Html;
use mdm\admin\AdminAsset;
use yii\helpers\Json;
use yii\helpers\Url;

/**
 * @var yii\web\View $this
 */
$this->title                   = 'Rutas';
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="row">
        <div class="col-md-12">
            <div class="menu-index box box-primary">
                <div class="box-header with-border">
					<?= Html::a('Crear Ruta', ['create'], ['class' => 'btn btn-success']) ?>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-lg-5">
							<?= Yii::t('rbac-admin', 'Avaliable') ?>:
							<?php
							echo Html::textInput('search_av', '', [
									'class'       => 'role-search',
									'data-target' => 'new'
								]) . ' ';
							echo Html::a('<span class="glyphicon glyphicon-refresh"></span>', '', ['id' => 'btn-refresh']);
							echo '<br>';
							echo Html::listBox('routes', '', $new, [
								'id'       => 'new',
								'multiple' => true,
								'size'     => 20,
								'style'    => 'width:100%'
							]);
							?>
                        </div>
                        <div class="col-lg-1">
                            &nbsp;<br><br>
							<?php
							echo Html::a('>>', '#', ['class' => 'btn btn-success', 'data-action' => 'assign']) . '<br>';
							echo Html::a('<<', '#', ['class' => 'btn btn-success', 'data-action' => 'delete']) . '<br>';
							?>
                        </div>
                        <div class="col-lg-5">
							<?= Yii::t('rbac-admin', 'Assigned') ?>:
							<?php
							echo Html::textInput('search_asgn', '', [
									'class'       => 'role-search',
									'data-target' => 'exists'
								]) . '<br>';
							echo Html::listBox('routes', '', $exists, [
								'id'       => 'exists',
								'multiple' => true,
								'size'     => 20,
								'style'    => 'width:100%',
								'options'  => $existsOptions
							]);
							?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
$this->render('_script');
