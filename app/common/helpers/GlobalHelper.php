<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 7/10/15
 * Time: 09:17 PM
 */

namespace common\helpers;

use Yii;
use backend\models\Configuration;

class GlobalHelper
{

    /**
     * GlobalHelper constructor.
     */
    public function __construct()
    {
        //Lee la configuracion una sola vez
        if ( ! isset( Yii::$app->params['global'] )) {

            $global_configuration = Configuration::find()->one();

            if ( ! is_null($global_configuration)) {
                Yii::$app->params['global'] = $global_configuration->attributes;
            }
        }
    }
}