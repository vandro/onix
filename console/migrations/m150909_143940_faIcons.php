<?php

use yii\db\Schema;
use yii\db\Migration;

class m150909_143940_faIcons extends Migration
{
    public function up()
    {
        $this->execute("CREATE TABLE IF NOT EXISTS `fa-icon` (
          `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
          `class` VARCHAR(45) NOT NULL COMMENT '',
          PRIMARY KEY (`id`)  COMMENT '')
        ENGINE = InnoDB");
    }

    public function down()
    {
        echo "m150909_143940_faIcons cannot be reverted.\n";

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
