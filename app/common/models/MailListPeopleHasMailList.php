<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "mail_list_people_has_mail_list".
 *
 * @property integer $mail_list_people_id
 * @property integer $mail_list_id
 *
 * @property MailListPeople $mailListPeople
 * @property MailList $mailList
 */
class MailListPeopleHasMailList extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mail_list_people_has_mail_list';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['mail_list_people_id', 'mail_list_id'], 'required'],
            [['mail_list_people_id', 'mail_list_id'], 'integer'],
            [['mail_list_people_id'], 'exist', 'skipOnError' => true, 'targetClass' => MailListPeople::className(), 'targetAttribute' => ['mail_list_people_id' => 'id']],
            [['mail_list_id'], 'exist', 'skipOnError' => true, 'targetClass' => MailList::className(), 'targetAttribute' => ['mail_list_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'mail_list_people_id' => 'Mail List People ID',
            'mail_list_id' => 'Mail List ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailListPeople()
    {
        return $this->hasOne(MailListPeople::className(), ['id' => 'mail_list_people_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailList()
    {
        return $this->hasOne(MailList::className(), ['id' => 'mail_list_id']);
    }
}
