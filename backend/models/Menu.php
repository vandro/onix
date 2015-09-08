<?php

namespace backend\models;

use Yii;
use yii\helpers\Url;

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
            [['name', 'url', 'icon'], 'string', 'max' => 45]
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
    public static function buildMenu($parentId = NULL){
        $menu = [];
        
        if(is_null($parentId)){
            $where = 'menu_id IS NULL';
            array_push($menu, [
                'label' => Yii::t("back", "Dashboard"),
                'url' => Yii::$app->homeUrl,
                'visible' => true,
                'template' => self::buildTemplate("fa-dashboard", false),
                'submenuTemplate' => self::SUBMENU_TEMPLATE
            ]);
        }else{
            $where = 'menu_id = :menu_id';
        }
        
        $children = self::find()
                ->where($where, is_null($parentId) ? [] : [':menu_id' => $parentId])
                ->orderBy('order ASC')
                ->all();
        
        foreach ($children as $child){
            array_push($menu, [
                'label' => $child->name,
                'url' => Url::to(['//' . $child->url]),
                'visible' => $child->show,
                'items' => (count($child->menus) > 0) ? self::buildMenu($child->id) : [],
                'template' => self::buildTemplate($child->icon, (count($child->menus) > 0)),
                'submenuTemplate' => self::SUBMENU_TEMPLATE
            ]);
        }
        
        return $menu;
    }
    
    public static function buildTemplate($icon, $has_submenus = true){
        $template = str_replace('{icon}', $icon, self::MENU_TEMPLATE);
        
        if($has_submenus === false){
            $template = str_replace('fa-angle-left pull-right', '', $template);
        }
        
        return $template;
    }
}
