<?php

use yii\db\Schema;
use yii\db\Migration;

class m150910_181740_insertMenu extends Migration
{
    public function up()
    {
        $sql = <<<SQL

INSERT INTO `menu` (`id`, `name`, `url`, `icon`, `show`, `order`, `menu_id`) VALUES
(1, 'Developer', '#', 'fa-cog', 1, 2000, NULL),
(3, 'Menu', 'menu/index', 'fa-list', 1, 2, 1),
(4, 'Messages', 'message/index', 'fa-language', 1, 3, 7),
(5, 'Log', 'log/index', 'fa-list-alt', 1, 4, 1),
(6, 'Global', 'configuration/index', 'fa-cog', 1, 0, 7),
(7, 'Settings', '#', 'fa-cogs', 1, 999, NULL);

ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_menu_menu1_idx` (`menu_id`);

ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;

ALTER TABLE `menu`
ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

SQL;

        $this->execute($sql);
    }

    public function down()
    {
        echo "m150910_181740_insertMenu cannot be reverted.\n";

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
