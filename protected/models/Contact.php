<?php

/**
 * This is the model class for table "contact".
 *
 * The followings are the available columns in table 'contact':
 * @property integer $id
 * @property string $name
 * @property string $email
 * @property string $who
 * @property string $invite
 * @property string $category
 * @property string $shop_name
 * @property string $facebook
 * @property string $instagram
 * @property string $website
 * @property string $address
 * @property string $shop_intro
 * @property string $added_date
 */
class Contact extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'contact';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, email, who, invite, category, shop_name, shop_intro', 'required'),
			array('name, email, who, invite, category, shop_name, facebook, instagram, website, address', 'length', 'max'=>128),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, email, who, invite, category, shop_name, facebook, instagram, website, address, shop_intro, added_date', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => 'Name',
			'email' => 'Email',
			'who' => 'Who',
			'invite' => 'Invite',
			'category' => 'Category',
			'shop_name' => 'Shop Name',
			'facebook' => 'Facebook',
			'instagram' => 'Instagram',
			'website' => 'Website',
			'address' => 'Address',
			'shop_intro' => 'Shop Intro',
			'added_date' => 'Added Date',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('who',$this->who,true);
		$criteria->compare('invite',$this->invite,true);
		$criteria->compare('category',$this->category,true);
		$criteria->compare('shop_name',$this->shop_name,true);
		$criteria->compare('facebook',$this->facebook,true);
		$criteria->compare('instagram',$this->instagram,true);
		$criteria->compare('website',$this->website,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('shop_intro',$this->shop_intro,true);
		$criteria->compare('added_date',$this->added_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Contact the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
