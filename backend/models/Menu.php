<?php

namespace backend\models;

use Yii;
use yii\helpers\Url;
use yii\helpers\VarDumper;

/**
 * This is the model class for table "menu".
 *
 * @property integer $id
 * @property string $name
 * @property string $url
 * @property string $icon
 * @property integer $show
 * @property integer $order
 * @property integer $menu_id
 *
 * @property Menu $menu
 * @property Menu[] $menus
 */
class Menu extends \yii\db\ActiveRecord
{

    const SUBMENU_TEMPLATE = "\n<ul class='treeview-menu'>\n{items}\n</ul>\n";
    const MENU_TEMPLATE = '<a href="{url}"><i class="fa {icon}"></i><span>{label}</span><i class="fa fa-angle-left pull-right"></i></a>';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'menu';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'url', 'icon', 'order'], 'required'],
            [['show', 'order', 'menu_id'], 'integer'],
            [['name', 'icon'], 'string', 'max' => 45],
            [['url'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('back', 'ID'),
            'name' => Yii::t('back', 'Name'),
            'url' => Yii::t('back', 'Url'),
            'icon' => Yii::t('back', 'Icon'),
            'show' => Yii::t('back', 'Show'),
            'order' => Yii::t('back', 'Order'),
            'menu_id' => Yii::t('back', 'Menu ID'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMenu()
    {
        return $this->hasOne(Menu::className(), ['id' => 'menu_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMenus()
    {
        return $this->hasMany(Menu::className(), ['menu_id' => 'id']);
    }

    /**
     * @return array() menu construido para ser utilizado con Nav::widget()
     */
    public static function buildMenu($parentId = null)
    {
        $menu = [];

        if (is_null($parentId)) {
            $where = 'menu_id IS NULL';
            array_push($menu, [
                'label' => Yii::t("back", "Dashboard"),
                'url' => Yii::$app->homeUrl,
                'visible' => true,
                'active' => Yii::$app->controller->id == 'site' ? true : false,
                'template' => self::buildTemplate("fa-dashboard", false),
                'submenuTemplate' => self::SUBMENU_TEMPLATE
            ]);
        } else {
            $where = 'menu_id = :menu_id';
        }

        $children = self::find()
            ->where($where, is_null($parentId) ? [] : [':menu_id' => $parentId])
            ->orderBy('order ASC')
            ->all();

        foreach ($children as $key => $child) {

            $active = false;

            if(Yii::$app->controller->id == reset(explode('/', $child->url))){
                $active = true;
            }

            //Buscamos activos, si los hay, se activa el padre
            if (count($child->menus) > 0) {
                $active = self::findActiveChild($child->menus);
            }

            array_push($menu, [
                'label' => Yii::t('back', $child->name),
                'url' => Url::to(['//' . $child->url]),
                'visible' => $child->show,
                'active' => $active,
                'items' => (count($child->menus) > 0) ? self::buildMenu($child->id) : [],
                'template' => self::buildTemplate($child->icon, (count($child->menus) > 0)),
                'submenuTemplate' => self::SUBMENU_TEMPLATE
            ]);
        }

        return $menu;
    }

    public static function buildTemplate($icon, $has_submenus = true)
    {
        $template = str_replace('{icon}', $icon, self::MENU_TEMPLATE);

        if ($has_submenus === false) {
            $template = str_replace('fa-angle-left pull-right', '', $template);
        }

        return $template;
    }

    /**
     * Busca submenus activos, si es asi el padre tambien debe estarlo
     *
     * @param $parent array
     *
     * @return boolean
     */
    public static function findActiveChild($parent)
    {
        foreach ($parent as $key => $child) {
            if (Yii::$app->controller->id == reset(explode('/', $child->url))) {
                return true;
            } elseif (count($child->menus) > 0) {
                $has_active_children = self::findActiveChild($child->menus);

                if ($has_active_children) {
                    return true;
                }
            }
        }

        return false;
    }
}
