<?php
/**
 * Created by OnixLabs.
 * Filename: ElFinderAsset.php
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 28/12/15
 * Time: 05:44 PM
 */

namespace common\widgets\onix\elfinder;

use yii\helpers\ArrayHelper;
use zxbodya\yii2\elfinder\ElFinderAsset as BaseAsset;


class OnixElFinderAsset extends BaseAsset
{
    public $sourcePath = '@common/widgets/onix/elfinder/assets';

    public function init()
    {
        $this->css = ArrayHelper::merge($this->css, [
            'css/onix_style.css'
        ]);

        parent::init();
    }
}