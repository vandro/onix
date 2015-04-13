<?php

namespace common\components;

use yii\i18n\MissingTranslationEvent;
use common\models\SourceMessage;
use common\models\Message;

class TranslationEventHandler
{
    /**
     * 
     * @param MissingTranslationEvent $event
     */
    public static function handleMissingTranslation(MissingTranslationEvent $event) {

        $source_message = SourceMessage::findOne(['category' => $event->category, 'message' => $event->message]);
        
        if($source_message === null){
            $source_message = new SourceMessage();
            $source_message->category = $event->category;
            $source_message->message = $event->message;
            $source_message->save();
        }

        $message = Message::findOne(['id' => $source_message->id, 'language' => $event->language]);
        
        if($message === null){
            $message = new Message();
            $message->id = $source_message->id;
            $message->language = $event->language;
            $message->translation = $source_message->message;
            $message->save();
        }
    }
}