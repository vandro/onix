<?php
/**
 * Created by BaseBackend development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 28/10/15
 * Time: 06:44 AM
 */

namespace backend\modules\onix\gii\crud;


class Generator extends \yii\gii\generators\crud\Generator
{
    public $modelClass = "common\\models";
    public $controllerClass = "Controller";
    public $viewPath = "@backend/views/";
    public $baseControllerClass = "common\\controllers\\BackController";
    public $indexWidgetType = 'grid';
    public $searchModelClass = 'backend\\modeles\\Search';
    /**
     * @var string the name of the code template that the user has selected.
     * The value of this property is internally managed by this class.
     */
    public $template = 'onix';
    /**
     * @var boolean whether the strings will be generated using `Yii::t()` or normal strings.
     */
    public $enableI18N = true;
    /**
     * @var string the message category used by `Yii::t()` when `$enableI18N` is `true`.
     * Defaults to `app`.
     */
    public $messageCategory = 'back';

    /**
     * @inheritdoc
     */
    public function getName()
    {
        return 'Onix CMS CRUD Generator';
    }
}