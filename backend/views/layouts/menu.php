<?php
/**
 * Created by PhpStorm.
 * User: ANDRES
 * Date: 11/03/2015
 * Time: 10:17 PM
 */

/* @var $this \yii\web\View */

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
                    <input type="text" name="q" id="livefilter-input" class="form-control" placeholder="Search..."/>
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
                    'class' => 'sidebar-menu',
                    'id'    => 'sidebar-menu'
                ],
                'submenuTemplate' => Menu::SUBMENU_TEMPLATE,
            ]);
            ?>
        </section>
        <!-- /.sidebar -->
    </aside>
<?php
$menu_Script = <<<JS
//we want this function to fire whenever the user types in the search-box
$("#livefilter-input").keyup(function () {

    //first we create a variable for the value from the search-box
    var searchTerm = $("#livefilter-input").val();

    //then a variable for the list-items (to keep things clean)
    var listItem = $('#sidebar-menu').children('li');

    //extends the default :contains functionality to be case insensitive
    //if you want case sensitive search, just remove this next chunk
    $.extend($.expr[':'], {
      'containsi': function(elem, i, match, array)
      {
        return (elem.textContent || elem.innerText || '').toLowerCase()
        .indexOf((match[3] || "").toLowerCase()) >= 0;
      }
    });//end of case insensitive chunk


    //this part is optional
    //here we are replacing the spaces with another :contains
    //what this does is to make the search less exact by searching all words and not full strings
    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")


    //here is the meat. We are searching the list based on the search terms
    $("#sidebar-menu li").not(":containsi('" + searchSplit + "')").each(function(e)   {

          //add a "hidden" class that will remove the item from the list
          $(this).addClass('hidden');
    });
    
    //this does the opposite -- brings items back into view
    $("#sidebar-menu li:containsi('" + searchSplit + "')").each(function(e) {

          //remove the hidden class (reintroduce the item to the list)
          $(this).removeClass('hidden');

    });
});
JS;

$this->registerJs($menu_Script, $this::POS_END);

?>