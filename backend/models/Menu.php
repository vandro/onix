<?php

namespace backend\models;

use Yii;

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
    public static function buildMenu(){
        return self::getChildren(NULL);
    }
    
    /**
     * 
     * @param INT or NULL $parentId id del menu padre, null la primera vez
     * @return [] menus 
     */
    protected static function getChildren($parentId){
        $menu = [];
        if(is_null($parentId)){
            $where = 'menu_id IS NULL';
        }else{
            $where = 'menu_id = :menu_id';
        }
        
        $children = self::find()
                ->where($where, is_null($parentId) ? [] : [':menu_id' => $parentId])
                ->orderBy('order ASC')
                ->all();
        
        foreach ($children as $child){
//            echo \yii\helpers\VarDumper::dump($child->menus,10,true);
            array_push($menu, [
                'label' => $child->name,
//                'encode' => '',
                'url' => $child->url,
                'visible' => $child->show,
                'items' => (count($child->menus) > 0) ? self::getChildren($child->id) : [],
//                'active' => true,
//                'template' => '',
//                'submenuTemplate' => ''
            ]);
        }
        
        return $menu;
    }
}
