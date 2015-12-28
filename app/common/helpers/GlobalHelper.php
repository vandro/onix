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
     * Inicia la configuración global y lo carga en los parámetros
     */
    public static function initGobals()
    {
        if ( ! isset( Yii::$app->params['global'] )) {

            $global_configuration = Configuration::find()->one();

            if ( ! is_null($global_configuration)) {
                Yii::$app->params['global'] = $global_configuration->attributes;
            }
        }
    }
}
