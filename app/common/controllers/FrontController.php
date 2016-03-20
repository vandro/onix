<?php
/**
 * Created by Onix development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 8/09/15
 * Time: 02:58 PM
 *
 *
 * Clase base para todos los controladores del frontEnd
 */

namespace common\controllers;

use Yii;

class FrontController extends OnixController
{
	public function beforeAction( $action ) {
		// your custom code here, if you want the code to run before action filters,
		// wich are triggered on the [[EVENT_BEFORE_ACTION]] event, e.g. PageCache or AccessControl

		if ( ! parent::beforeAction( $action ) ) {
			return false;
		}

		$this->view->title = Yii::$app->params['global']['company'];

		// other custom code here

		return true; // or false to not run the action
	}
}
