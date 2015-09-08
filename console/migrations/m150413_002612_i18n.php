<?php

use yii\db\Schema;
use yii\db\Migration;

class m150413_002612_i18n extends Migration
{
    public function up()
    {
        $this->execute("
            CREATE TABLE source_message (
                id INTEGER PRIMARY KEY AUTO_INCREMENT,
                category VARCHAR(32),
                message TEXT
            );

            CREATE TABLE message (
                id INTEGER,
                language VARCHAR(16),
                translation TEXT,
                PRIMARY KEY (id, language),
                CONSTRAINT fk_message_source_message FOREIGN KEY (id)
                    REFERENCES source_message (id) ON DELETE CASCADE ON UPDATE RESTRICT
            );");
    }

    public function down()
    {
        $this->delete("source_message");
        $this->delete("message");
        echo "Ok";
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
