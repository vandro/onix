<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 4/4/17
 * Time: 6:48 PM
 */

namespace backend\modules\onix\theme\controllers;


use common\controllers\BackController;

class ThemeController extends BackController
{
	public function actionIndex()
	{
		return $this->render('index');
	}
}