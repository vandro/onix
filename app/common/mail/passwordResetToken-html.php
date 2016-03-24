<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $user common\models\User */

$resetLink = Yii::$app->urlManager->createAbsoluteUrl(['site/reset-password', 'token' => $user->password_reset_token]);
?>
<div class="password-reset">
    <p>Hola <?= Html::encode($user->username) ?>,</p>

    <p>Haz clic en el siguiente enlace para restablecer tu contraseña o copia y pega la url en el navegador:</p>

    <p><?= Html::a(Html::encode($resetLink), $resetLink) ?></p>
</div>
