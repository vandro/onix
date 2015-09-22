<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:17 PM
 */

use backend\models\Menu;

?>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <?= \yii\helpers\Html::img('@web/uploads/' . Yii::$app->user->identity->picture,
                    ['class' => 'img-circle', 'alt' => 'User Image']) ?>
            </div>
            <div class="pull-left info">
                <p><?= Yii::$app->user->identity->username ?></p>
                <a href="#"><i class="fa fa-circle text-success"></i> <?= Yii::t('back', 'Online') ?></a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <?php
        echo yii\widgets\Menu::widget([
            'items'           => Menu::buildMenu(),
            'activateParents' => true,
            'options'         => [
                'class' => 'sidebar-menu'
            ],
            'submenuTemplate' => Menu::SUBMENU_TEMPLATE,
        ]);
        ?>
    </section>
    <!-- /.sidebar -->
</aside>