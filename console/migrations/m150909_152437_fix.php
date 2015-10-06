<?php

use yii\db\Schema;
use yii\db\Migration;

class m150909_152437_fix extends Migration
{
    public function up()
    {
        $this->renameTable('fa-icon', 'faIcon');
    }

    public function down()
    {
        echo "m150909_152437_fix cannot be reverted.\n";

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
