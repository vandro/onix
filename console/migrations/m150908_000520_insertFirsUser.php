<?php

use yii\db\Schema;
use yii\db\Migration;

class m150908_000520_insertFirsUser extends Migration
{
    public function up()
    {
        $first_user = new \common\models\User();

        $first_user->username = 'admin';
        $first_user->email = Yii::$app->params['adminEmail'];
        $first_user->setPassword('admin');
        $first_user->status = \common\models\User::STATUS_ACTIVE;

        if (!$first_user->save()) {
            \yii\helpers\VarDumper::dump($first_user->getErrors());
            Yii::$app->end();
        }
    }

    public function down()
    {
        echo "m150908_000520_insertFirsUser cannot be reverted.\n";

        return false;
    }
    
    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }
    
    public function safeDown()
    {
    }
    */
}
