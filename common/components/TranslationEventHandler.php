<?php

namespace common\components;

use yii\i18n\MissingTranslationEvent;
use common\models;

class TranslationEventHandler
{
    public static function handleMissingTranslation(MissingTranslationEvent $event) {

        $source = new \common\models\SourceMessage();
        $message = new \common\models\Message();

        $test = \common\models\SourceMessage::find()
            ->where(['category' => $event->category, 'message' => $event->message]);

        if($test->exists()) {
            $data = $test->one();
            $message->id = $data->id;
        } else {
            $source->category = $event->category;
            $source->message  = $event->message;
            $source->save();

            $message->id = $source->id;
        }

        $message->language = $event->language;
        $message->translation = $event->message;
        // there will be a [true] text befor every valid translation
//        \yii\helpers\VarDumper::dump($message->validate(),10,true);
        $message->save();
    }
}