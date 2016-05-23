<?php
/**
 * Created by Onix development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 8/09/15
 * Time: 02:57 PM
 *
 * Base class for all bussiness controllers (backend, frontend, api, etc..)
 */

namespace common\controllers;

use Yii;
use yii\web\Controller;
use common\helpers\GlobalHelper;
use backend\models\Configuration;

class OnixController extends Controller {
	/**
	 * @inheritdoc
	 */
	public function __construct( $id, $module, $config = [ ] ) {
		parent::__construct( $id, $module, $config );
		self::initOnixParams();
	}

	public static function initOnixParams() {

		GlobalHelper::initGobals();
		Yii::$app->name = Yii::$app->params['global']['company'];
	}
}
