<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 5/22/16
 * Time: 10:05 PM
 */

namespace common\controllers;

use yii\rest\ActiveController;

class WsController extends ActiveController
{
    /**
     * Api constructor.
     */
    public function __construct($id, $module, $config = [])
    {
        parent::__construct($id, $module, $config = []);

        /*
         * Inicializa los parámetros del sistema tal como lo hace OnixController el cual es la base de todos los
         * controladores
         */
        OnixController::initOnixParams();
    }
}