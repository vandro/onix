<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:10 PM
 */

use yii\helpers\Html;
use yii\helpers\Url;

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
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only"><?= Yii::t('back', 'Cambiar Navegacion') ?></span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li>
                    <a href="<?php echo Yii::$app->params['global']['site_url'] ?>" target="_blank">
                        <?= Yii::t('back', 'Ver sitio') ?> <i class="fa fa-globe"></i>
                    </a>
                </li>
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <?= Html::img(Yii::$app->user->identity->picture, [
                            'class' => 'user-image',
                            'alt'   => 'Foto de perfil'
                        ]) ?>
                        <span class="hidden-xs"><?= Yii::$app->user->identity->username ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <?= Html::img(Yii::$app->user->identity->picture, [
                                'class' => 'img-circle',
                                'alt'   => 'Foto de perfil'
                            ]) ?>
                            <p>
                                <?= Yii::$app->user->identity->username ?>
                                <small><?= Yii::t('back', 'Registrado desde') . ' ' . Yii::$app->formatter->asDate(Yii::$app->user->identity->created_at, 'long') ?></small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?= Url::to(['//user/update', 'id' => Yii::$app->user->identity->getId()]) ?>"
                                   class="btn btn-default btn-flat"><?= Yii::t('back', 'Perfil') ?></a>
                            </div>
                            <div class="pull-right">
                                <?= Html::a(Yii::t('back', 'Salir'), ['/site/logout'], [
                                    'class'       => 'btn btn-default btn-flat',
                                    'data-method' => 'post'
                                ]) ?>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>