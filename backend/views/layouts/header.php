<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:10 PM
 */

use \common\widgets\LanguageDropdown;
use \yii\bootstrap\NavBar;
use \yii\bootstrap\Nav;

?>

<header class="main-header">
    <!-- Logo -->
    <a href="<?= \yii\helpers\Url::to(Yii::$app->request->baseUrl) ?>" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>O</b>C</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>ONIX</b>CMS</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <?php

    NavBar::begin([
        'options'               => [
            'class' => 'navbar navbar-static-top',
            'role'  => 'navigation'
        ],
        'innerContainerOptions' => [
            'class' => 'navbar-custom-menu'
        ]
    ]); ?>

    <?php echo Nav::widget([
        'options' => [
            'class' => 'navbar-nav',
        ],
        'items'   => [
            '<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">' . Yii::t('back',
                'Cambiar Idioma') . ' [' . strtoupper(Yii::$app->language) . ']</a>
				' . LanguageDropdown::widget() . '
			</li>',
            '<li class="dropdown user user-menu">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					' . \yii\helpers\Html::img('@web/uploads/' . Yii::$app->user->identity->picture,
                ['class' => 'user-image', 'alt' => 'Foto de perfil']) . '
					<span class="hidden-xs">' . Yii::$app->user->identity->username . '</span>
				</a>
				<ul class="dropdown-menu">
					<!-- User image -->
					<li class="user-header">
						' . \yii\helpers\Html::img('@web/uploads/' . Yii::$app->user->identity->picture,
                ['class' => 'img-circle', 'alt' => 'Foto de perfil']) . '
						<p>
							' . Yii::$app->user->identity->username . ' - [' . implode(', ', array_keys(Yii::$app->authManager->getRolesByUser(Yii::$app->user->identity->getId()))) . ']
							<small>' . Yii::t('back',
                'Registrado desde') . ' ' . Yii::$app->formatter->asDate(Yii::$app->user->identity->created_at,
                'long') . '</small>
						</p>
					</li>
					<!-- Menu Footer-->
					<li class="user-footer">
						<div class="pull-left">
							<a href="' . \yii\helpers\Url::to([
                '//user/update',
                'id' => Yii::$app->user->identity->getId()
            ]) . '" class="btn btn-default btn-flat">' . Yii::t('app', 'Perfil') . '</a>
						</div>
						<div class="pull-right">
							' . \yii\helpers\Html::a(Yii::t('back', 'Cerrar sesion'), ['/site/logout'],
                ['class' => 'btn btn-default btn-flat', 'data-method' => 'post']) . '
						</div>
					</li>
				</ul>
			</li>'
        ]
    ]);

    NavBar::end();

    ?>
</header>