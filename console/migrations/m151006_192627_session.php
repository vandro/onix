<?php

use yii\db\Schema;
use yii\db\Migration;

class m151006_192627_session extends Migration
{
    public function up()
    {
        $this->execute('
            CREATE TABLE IF NOT EXISTS session
            (
                id CHAR(40) NOT NULL PRIMARY KEY,
                expire INTEGER,
                data BLOB
            )');
    }

    public function down()
    {
        echo "m151006_192627_session cannot be reverted.\n";

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
