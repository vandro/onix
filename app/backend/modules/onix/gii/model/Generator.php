<?php

namespace backend\modules\onix\gii\model;

use Yii;

/**
 * This generator will generate one or multiple ActiveRecord classes for the specified database table.
 *
 * @author Andrés Felipe Solarte <devsolate@gmail.com>
 * @since  2.0
 */
class Generator extends \yii\gii\generators\model\Generator {

	public $name_singular = '';
	public $name_plural   = '';

	/**
	 * @inheritdoc
	 */
	public function rules() {
		return array_merge( parent::rules(), [
			[ [ 'name_singular', 'name_plural' ], 'required' ]
		] );
	}

	/**
	 * @inheritdoc
	 */
	public function attributeLabels() {
		return array_merge( parent::attributeLabels(), [
			'name_singular' => 'Singular Model Name',
			'name_plural'   => 'Plural Model Name',
		] );
	}

	/**
	 * @inheritdoc
	 */
	public function hints() {
		return array_merge( parent::hints(), [
			'name_singular' => 'Singular Model Name, it will be shown in the CRUD views buttons, message and everything that has reference to the current model',
			'name_plural'   => 'Plural Model Name, it will be shown in the CRUD views buttons, message and everything that has reference to the current model',
		] );
	}
}
