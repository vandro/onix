<?php
namespace zxbodya\yii2\elfinder;

use Yii;
use yii\base\Exception;
use yii\helpers\Html;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\AssetBundle;
use yii\web\JsExpression;
use yii\web\View;
use yii\widgets\InputWidget;
use zxbodya\yii2\elfinder\ElFinderAsset;

class ElFinderInput extends InputWidget
{
    /**
     * Client settings.
     * More about this: https://github.com/Studio-42/elFinder/wiki/Client-configuration-options
     * @var array
     */
    public $settings = array();
    public $connectorRoute = false;
    public $imagePreview = false;

    public function init()
    {

        if (empty( $this->connectorRoute )) {
            throw new Exception('$connectorRoute must be set!');
        }
        $this->settings['url']  = Url::toRoute($this->connectorRoute);
        $this->settings['lang'] = Yii::$app->language;
    }

    public function run()
    {
        $img_container_id = null;

        if ( ! isset( $this->options['id'] )) {
            $this->options['id'] = $this->getId();
        }

        $contoptions       = $this->options;
        $contoptions['id'] = $this->options['id'] . 'container';

        echo Html::beginTag('div', $contoptions);

        echo Html::beginTag('div', ['class' => 'col-sm-12']);

        if ($this->imagePreview == true) {
            $img_container_id = 'elfinder_img_preview_' . uniqid();
            echo '<div class="file-preview ">
                    <div class="file-drop-disabled">
                        <div class="file-preview-thumbnails">
                            <div class="file-preview-frame file-preview-initial">
                                <img src="' . $this->model->{$this->attribute} . '" id="' . $img_container_id . '" alt="">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>';
        }

        echo Html::beginTag('div', ['class' => 'row']);
        echo Html::beginTag('div', ['class' => 'col-sm-8']);

        $inputOptions = array(
            'id'       => $this->options['id'],
            'readonly' => 'readonly',
            'class'    => 'form-control'
        );
        if ($this->hasModel()) {
            echo Html::activeTextInput($this->model, $this->attribute, $inputOptions);
        } else {
            echo Html::textInput($this->name, $this->value, $inputOptions);
        }
        echo Html::endTag('div');

        echo Html::beginTag('div', ['class' => 'col-sm-4']);
        echo Html::button(Yii::t('back', 'Buscar'), array(
            'id'    => $this->options['id'] . 'browse',
            'class' => 'btn col-sm-12'
        ));
        echo Html::endTag('div');
        echo Html::endTag('div');

        echo Html::endTag('div');
        echo Html::endTag('div');

        $settings = array_merge(
            array(
                'places'          => "",
                'rememberLastDir' => false,
            ),
            $this->settings
        );

        $settings['dialog'] = array(
            'zIndex' => 400001,
            'width'  => 900,
            'modal'  => true,
            'title'  => "Files",
        );

        if ($this->imagePreview == true) {
            $settings['editorCallback'] = new JsExpression('function(url) {$(\'#\'+aFieldId).attr(\'value\',url); $("#' . $img_container_id . '").attr("src", url)}');
        } else {
            $settings['editorCallback'] = new JsExpression('function(url) {$(\'#\'+aFieldId).attr(\'value\',url);}');
        }
        $settings['closeOnEditorCallback'] = true;
        $connectorUrl                      = Json::encode($this->settings['url']);
        $settings                          = Json::encode($settings);
        $script                            = <<<EOD
        window.elfinderBrowse = function(field_id, connector) {
            var aFieldId = field_id, aWin = this;
            if($("#elFinderBrowser").length == 0) {
                $("body").append($("<div/>").attr("id", "elFinderBrowser"));
                var settings = $settings;
                settings["url"] = connector;
                $("#elFinderBrowser").elfinder(settings);
            }
            else {
                $("#elFinderBrowser").elfinder("open", connector);
            }
        };
EOD;

        $view = $this->getView();
        ElFinderAsset::register($view);
        $view->registerJs($script, View::POS_READY, $key = 'ServerFileInput#global');

        $js = '$("#' . $this->options['id'] . 'browse")'
              . '.click(function(){window.elfinderBrowse("' . $this->options['id'] . '", ' . $connectorUrl . ')});';


        $view->registerJs($js);
    }

}