<?php
/**
 * Created by PhpStorm.
 * User: andres
 * Date: 4/4/17
 * Time: 6:46 PM
 */

namespace backend\modules\onix\theme;


class Module extends \yii\base\Module
{
	public function init()
	{
		parent::init();

		$this->basePath = __DIR__ . '/';

		// ...  other initialization code ...
	}
}