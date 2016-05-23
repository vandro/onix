<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 8/09/15
 * Time: 02:58 PM
 *
 * Controlador base para el backend
 *
 * @var $this \common\controllers\BackController
 */

namespace common\controllers;

use Yii;
use backend\modules\onix\admin\components\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;

/**
 * Todos los controladores del Backend debe extender de este controlador, eso permite que tenga los compartmientos a
 * nivel de seguridad y validaciones para las solicitudes, en caso contrario podría producirse un error de seguridad en
 * la aplicación
 *
 * Class BackController
 * @package common\controllers
 */
class BackController extends OnixController {
	/**
	 * BackController constructor.
	 */
	public function __construct( $id, $module, $config = [ ] ) {
		parent::__construct( $id, $module, $config = [ ] );
		self::initBackendParams();
	}

	/**
	 * Cargamos los comportamientos globales de acceso tales como la validacion de control de acceso y el filtro de
	 * peticiones a trvés de verbos
	 *
	 * @inheritdoc
	 */
	public function behaviors() {
		return self::initBackendBehaviors();
	}

	/**
	 * Inicializa los parámetros del backend, esto permite reutilizar estos parámetros cuando se va a instanciar una
	 * clase que hereda desde otra de mas bajo nivel a esta, ej. Controller.
	 */
	public static function initBackendParams() {
		$frontEnd_url_prev_config = isset( Yii::$app->components['urlManagerFrontEnd'] ) ? Yii::$app->components['urlManagerFrontEnd'] : [ ];
		$frontEnd_url_config      = [
			'urlManagerFrontEnd' => ArrayHelper::merge( $frontEnd_url_prev_config, [
				'baseUrl' => Yii::$app->params['global']['site_url']
			] )
		];

		Yii::$app->setComponents( $frontEnd_url_config );
	}

	public static function initBackendBehaviors() {
		return [
			'access' => [
				'class' => AccessControl::className(),
			],
			'verbs'  => [
				'class'   => VerbFilter::className(),
				'actions' => [
					'delete' => [ 'post' ],
				],
			],
		];
	}
}
