<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 4/4/17
 * Time: 6:48 PM
 */

namespace backend\modules\onix\theme\controllers;


use common\controllers\BackController;

class DefaultController extends BackController
{
	public function actionIndex()
	{
		/**
		 * Aun no muevo el código de la vista al controlador porque estoy definiendo los campos a enviar a la vista,
		 * la idea es definirlos y crear una tabla para el módulo y de la misma manera su respectiva migración
		 */
		return $this->render('index');
	}
}