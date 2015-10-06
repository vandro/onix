<?php
/**
 * Created by BaseBackend development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 22/09/15
 * Time: 01:09 AM
 */

namespace common\components;

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
     * @param string|array $from sender email address.
     * You may pass an array of addresses if this message is from multiple people.
     * You may also specify sender name in addition to email address using format:
     * `[email => name]`.
     *
     * @param string|array $to receiver email address.
     * You may pass an array of addresses if multiple recipients should receive this message.
     * You may also specify receiver name in addition to email address using format:
     * `[email => name]`.
     *
     *
     * @param string $subject message subject
     *
     *
     * @param string $body message HTML content.
     *
     * @return bool
     * @throws \yii\base\InvalidConfigException
     */
    public function sendWithTemplate($to, $subject, $body)
    {
        /**
         * @var Configuration $general_settings
         */

        $result           = false;
        $general_settings = Configuration::find()->one();
        $email_template   = str_replace(Configuration::EMAIL_CONTENT_TEMPLATE, $body, $general_settings->template);

        //Si es local, no envia mails
        $this->useFileTransport = \Yii::$app->request->getUserIP() == '127.0.0.1';

        //Cuando este en un host, se debe enviar email desde la cuenta configurada
        if ($this->useFileTransport == false) {
            $transport_def = [
                'class'      => 'Swift_SmtpTransport',
                'host'       => $general_settings->host,
                'username'   => $general_settings->username,
                'password'   => $general_settings->password,
                'port'       => $general_settings->port,
                'encryption' => $general_settings->encryption,
            ];

            $this->setTransport($transport_def);
        }

        try {
            $result = $this->compose()->setFrom('andres.felipe.az@hotmail.com')->setTo($to)->setSubject($subject)->setHtmlBody($email_template)->send();
        } catch (\Swift_IoException $e) {
            \Yii::$app->session->setFlash(Growl::TYPE_DANGER, $e->getMessage());
        }

        return $result;
    }
}