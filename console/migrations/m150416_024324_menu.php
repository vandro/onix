<?php

use yii\db\Schema;
use yii\db\Migration;

class m150416_024324_menu extends Migration
{
    public function up()
    {
        $this->execute("
        CREATE TABLE IF NOT EXISTS `menu` (
            `id` INT NOT NULL AUTO_INCREMENT,
            `name` VARCHAR(45) NOT NULL,
            `url` VARCHAR(255) NOT NULL,
            `icon` VARCHAR(45) NOT NULL,
            `show` TINYINT NOT NULL default 1,
            `order` TINYINT NOT NULL,
            `menu_id` INT NULL,
            PRIMARY KEY (`id`),
            INDEX `fk_menu_menu1_idx` (`menu_id` ASC),
            CONSTRAINT `fk_menu_menu1`
              FOREIGN KEY (`menu_id`)
              REFERENCES `cms-beta`.`menu` (`id`)
              ON DELETE CASCADE
              ON UPDATE CASCADE)");
    }

    public function down()
    {
        $this->dropTable('menu');
        echo "done :)";
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
