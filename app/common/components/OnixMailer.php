<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 22/09/15
 * Time: 01:09 AM
 */

namespace common\components;

use Yii;
use backend\models\Configuration;
use kartik\growl\Growl;
use yii\swiftmailer\Mailer;
use yii\helpers\VarDumper;

class OnixMailer extends Mailer
{

    public $messageClass = 'yii\swiftmailer\Message';

    /**
     * @param Configuration $general_settings
     *
     * @param string|array  $from    sender email address.
     *                               You may pass an array of addresses if this message is from multiple people.
     *                               You may also specify sender name in addition to email address using format:
     *                               `[email => name]`.
     *
     * @param string|array  $to      receiver email address.
     *                               You may pass an array of addresses if multiple recipients should receive this
     *                               message. You may also specify receiver name in addition to email address using
     *                               format:
     *                               `[email => name]`.
     *
     *
     * @param string        $subject message subject
     *
     *
     * @param string        $body    message HTML content.
     *
     * @return bool
     * @throws \yii\base\InvalidConfigException
     */
    public function sendWithTemplate($to, $subject, $body)
    {
        /**
         * @var Configuration $general_settings
         */

        $result = false;
        $cc     = [];

        $general_settings = Yii::$app->params['global'];
        $email_temp       = Configuration::EMAIL_CONTENT_TEMPLATE;
        $logo_temp        = Configuration::EMAIL_COMPANY_NAME_TEMPLATE;
        $body_content     = str_replace($email_temp, $body, $general_settings['template']);
        $logo_content     = str_replace($logo_temp, $general_settings['company'], $body_content);
        $email_template   = $logo_content;
        $transport_def    = new \Swift_SmtpTransport();

        $transport_def->setHost($general_settings['host']);
        $transport_def->setUsername($general_settings['username']);
        $transport_def->setPassword($general_settings['password']);
        $transport_def->setEncryption(strtolower($general_settings['encryption']));
        $transport_def->setPort($general_settings['port']);

        $this->setTransport($transport_def);

        try {
            $result = $this->compose()
                ->setFrom([
                    $general_settings['username'] => $general_settings['email_name']
                ])
                ->setTo($to)
                ->setCc($cc)
                ->setSubject($subject)
                ->setHtmlBody($email_template)
                ->send();

        } catch (\Swift_IoException $e) {
            \Yii::$app->session->setFlash(Growl::TYPE_DANGER, $e->getMessage());
        }

        return $result;
    }
}
