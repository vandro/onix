<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:10 PM
 */
?>

<header class="main-header">
    <!-- Logo -->
    <a href="<?= Yii::$app->params['companyUrl'] ?>" class="logo"><b>AS</b>WEBS <b>CMS</b></a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                        <span class="hidden-xs"><?= Yii::$app->user->identity->username ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                            <p>
                                <?= Yii::$app->user->identity->username ?> - Web Developer
                                <small>Member since Nov. 2012</small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <?= \yii\helpers\Html::a(Yii::t('back', 'Sign out'), ['/site/logout'], ['class' => 'btn btn-default btn-flat', 'data-method' => 'post']) ?>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>