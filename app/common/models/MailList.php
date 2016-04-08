<?php

namespace common\models;

use Yii;
use yii\db\Expression;
use yii\behaviors\TimestampBehavior;
use yii\base\NotSupportedException;

/**
 * This is the model class for table "mail_list".
 *
 * @property integer $id
 * @property string $const_name
 * @property string $name
 * @property string $description
 * @property string $created_at
 * @property string $updated_at
 *
 * @property MailListPeopleHasMailList[] $mailListPeopleHasMailLists
 * @property MailListPeople[] $mailListPeoples
 */
class MailList extends \yii\db\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'mail_list';
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
    public function rules() {
        return [
            [['const_name', 'name'], 'required'],
            [['const_name'], 'unique'],
            [['description'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['const_name', 'name'], 'string', 'max' => 45],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => 'ID',
            'const_name' => 'Identificador',
            'name' => 'Nombre',
            'description' => 'Descripción',
            'created_at' => 'Creado',
            'updated_at' => 'Actualizado',
            'mailListPeoples' => 'Personas inscritas'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailListPeopleHasMailLists() {
        return $this->hasMany(MailListPeopleHasMailList::className(), ['mail_list_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMailListPeoples() {
        return $this->hasMany(MailListPeople::className(), ['id' => 'mail_list_people_id'])->viaTable('mail_list_people_has_mail_list', ['mail_list_id' => 'id']);
    }

    public function createConstName() {
        if(!$this->isNewRecord){
            throw new NotSupportedException('La constante solo puede ser creada con nuevos modelos');
        }
        
        if (is_null($this->const_name)) {
            $this->const_name = strtoupper(Yii::$app->security->generateRandomString(10));

            if (!$this->validate('const_name')) {
                $this->createConstName();
            }
        }
        
        return true;
    }

}
