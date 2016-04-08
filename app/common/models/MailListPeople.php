<?php

namespace common\models;

use Yii;
use yii\db\Expression;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "mail_list_people".
 *
 * @property integer $id
 * @property string $name
 * @property string $email
 * @property string $additional_data
 * @property string $created_at
 * @property string $updated_at
 *
 * @property MailListPeopleHasMailList[] $mailListPeopleHasMailLists
 * @property MailList[] $mailLists
 */
class MailListPeople extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mail_list_people';
    }
    
    public function behaviors() {
        return [
            [
                'class' => TimestampBehavior::className(),
                'createdAtAttribute' => 'created_at',
                'updatedAtAttribute' => 'updated_at',
                'value' => new Expression('NOW()'),
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'email'], 'required'],
            [['email'], 'email'],
            [['email'], 'unique'],
            [['additional_data'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['name', 'email'], 'string', 'max' => 60],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Nombre',
            'email' => 'Email',
            'additional_data' => 'Datos adicionales',
            'created_at' => 'Creado',
            'updated_at' => 'Actualizado',
            'mailLists' => 'Listas de email'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailListPeopleHasMailLists()
    {
        return $this->hasMany(MailListPeopleHasMailList::className(), ['mail_list_people_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailLists()
    {
        return $this->hasMany(MailList::className(), ['id' => 'mail_list_id'])->viaTable('mail_list_people_has_mail_list', ['mail_list_people_id' => 'id']);
    }
}
