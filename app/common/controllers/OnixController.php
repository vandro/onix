<?php
/**
 * Created by Onix development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 8/09/15
 * Time: 02:57 PM
 *
 * Clase Base para cualquier controlador ya sea back o front
 */

namespace common\controllers;

use Yii;
use yii\web\Controller;
use common\helpers\GlobalHelper;
use backend\models\Configuration;

class OnixController extends Controller
{
    /**
     * @inheritdoc
     */
    public function __construct($id, $module, $config = [])
    {
        parent::__construct($id, $module, $config);
        GlobalHelper::initGobals();

        Yii::$app->name = Configuration::find()->one()->company;
    }
}
