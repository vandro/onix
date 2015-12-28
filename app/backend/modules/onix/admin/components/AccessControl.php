<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 7/10/15
 * Time: 09:11 PM
 */

namespace backend\modules\onix\admin\components;

use Yii;
use common\helpers\GlobalHelper;


class AccessControl extends \mdm\admin\components\AccessControl
{
    /**
     * @inheritdoc
     */
    public function beforeAction($action)
    {
        new GlobalHelper();
        return parent::beforeAction($action);
    }
}