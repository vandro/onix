<?php
/**
 * Created by OnixLabs development team.
 * User: Andrés Felipe Solarte <devsolarte@gmail.com>
 * Date: 22/09/15
 * Time: 01:09 AM
 */

namespace common\components;

use Yii;
use kartik\growl\Growl;
use yii\swiftmailer\Mailer;
use backend\models\Configuration;
use yii\base\InvalidConfigException;

class OnixMailer extends Mailer
{

    public $messageClass = 'yii\swiftmailer\Message';

    /**
     * Send an email with the configuration email template and SMTP credentials, if the credentials fails, the system
     * try to send the email again without SMTP authentication
     *
     * @param string|array $to       receiver email address.
     *                               You may pass an array of addresses if multiple recipients should receive this
     *                               message. You may also specify receiver name in addition to email address using
     *                               format:
     *                               `[email => name]`.
     * @param string       $subject  message subject
     * @param string       $body     message HTML content.
     *
     * @return bool
     * @throws InvalidConfigException
     * @throws \yii\base\InvalidConfigException
     * @throws \yii\db\Exception
     */
    public function sendWithTemplate($to, $subject, $body, $use_transport = true)
    {
        /**
         * @var Configuration $general_settings
         */

        $result           = false;
        $cc               = [];
        $general_settings = isset(Yii::$app->params['global']) ? Yii::$app->params['global'] : [];

        if ($use_transport == true && !empty($general_settings)) {

            $transport_def = new \Swift_SmtpTransport();
            $transport_def->setHost($general_settings['host']);
            $transport_def->setUsername($general_settings['username']);
            $transport_def->setPassword($general_settings['password']);
            $transport_def->setEncryption(strtolower($general_settings['encryption']));
            $transport_def->setPort($general_settings['port']);

            $this->setTransport($transport_def);

        } elseif (isset(Yii::$app->params['adminEmail'], Yii::$app->params['companyName'])) {
            if (empty($general_settings)) {
                $general_settings['username']   = Yii::$app->params['adminEmail'];
                $general_settings['email_name'] = Yii::$app->params['adminEmail'];
                $general_settings['company']    = Yii::$app->params['companyName'];
                $general_settings['template']   = Configuration::EMAIL_CONTENT_TEMPLATE;
            }
        } else {
            $message = 'Faltan las los parámetros de configuración de correo electrónico,';
            $message .= 'alternativos "adminEmail" y "companyName"';

            throw new InvalidConfigException(Yii::t('back', $message));
        }

        $email_temp     = Configuration::EMAIL_CONTENT_TEMPLATE;
        $logo_temp      = Configuration::EMAIL_COMPANY_NAME_TEMPLATE;
        $body_content   = str_replace($email_temp, $body, $general_settings['template']);
        $email_template = str_replace($logo_temp, $general_settings['company'], $body_content);

        try {
            $result = $this->compose()
                ->setFrom([$general_settings['username'] => $general_settings['email_name']])
                ->setTo($to)
                ->setCc($cc)
                ->setSubject($subject)
                ->setHtmlBody($email_template)
                ->send();

        } catch (\Swift_IoException $e) {
            \Yii::$app->session->setFlash(Growl::TYPE_DANGER, $e->getMessage());

            if ($use_transport == true) {

                Yii::$app->db->close();
                Yii::$app->db->open();

                $flash_msg = 'SE INTENTO ENVIAR DE NUEVO EL EMAIL USANDO LA LIBRERÍA ESTANDAR';

                \Yii::$app->session->setFlash(Growl::TYPE_INFO, $flash_msg);
                $result = $this->sendWithTemplate($to, $subject, $body, false);
            }
        }

        return $result;
    }
}
