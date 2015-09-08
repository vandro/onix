<?php

use yii\db\Schema;
use yii\db\Migration;

class m150908_212902_create_conf_table extends Migration
{
    public function up()
    {
        $this->execute("CREATE TABLE IF NOT EXISTS `cms-beta`.`configuration` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `company` VARCHAR(120) NOT NULL COMMENT '',
  `email_name` VARCHAR(120) NOT NULL COMMENT '',
  `host` VARCHAR(120) NOT NULL COMMENT '',
  `encryption` VARCHAR(20) NOT NULL COMMENT '',
  `username` VARCHAR(120) NOT NULL COMMENT '',
  `password` VARCHAR(120) NOT NULL COMMENT '',
  `port` VARCHAR(45) NOT NULL COMMENT '',
  `template` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB");
    }

    public function down()
    {
        echo "m150908_212902_create_conf_table cannot be reverted.\n";

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
