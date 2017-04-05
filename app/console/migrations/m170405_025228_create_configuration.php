<?php

use yii\db\Migration;
use yii\db\Schema;

class m170405_025228_create_configuration extends Migration
{
	public $tableName = 'configuration';

	public function init()
	{
		parent::init();
	}

	public function up()
	{
		$tableOptions = null;

		if ($this->db->driverName === 'mysql') {
			$tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
		}

		$this->createTable($this->tableName, [
			'id'         => $this->primaryKey(),
			'site_url'   => $this->string(60)->notNull(),
			'company'    => $this->string(60)->notNull(),
			'email_name' => $this->string(60)->notNull(),
			'host'       => $this->string(120)->null()->defaultValue(null),
			'encryption' => $this->string(3)->null()->defaultValue(null),
			'username'   => $this->string(120)->null()->defaultValue(null),
			'password'   => $this->string(120)->null()->defaultValue(null),
			'port'       => $this->string(4)->null()->defaultValue(null),
			'template'   => $this->text()->null()->defaultValue(null)->comment('the string "__CONTENT__" will be replaced with the email body'),
		], $tableOptions);

		$this->insert($this->tableName, [
			'site_url'   => 'http://localhost:8080',
			'company'    => 'My Company',
			'email_name' => 'My Company, Support Team',
			'host'       => null,
			'encryption' => null,
			'username'   => null,
			'password'   => null,
			'port'       => null,
			'template'   => null,
		]);
	}

	public function down()
	{
		$this->dropTable($this->tableName);
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
