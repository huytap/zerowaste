<?php

/**
 * This is the model class for table "news".
 *
 * The followings are the available columns in table 'news':
 * @property integer $id
 * @property integer $news_category_id
 * @property string $name
 * @property string $photo
 * @property string $organiser
 * @property string $date
 * @property string $link
 * @property string $short_description
 * @property string $description
 * @property string $address
 * @property integer $status
 */
class News extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'news';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('news_category_id, name, photo, short_description, description', 'required'),
			array('news_category_id, status', 'numerical', 'integerOnly'=>true),
			array('name, link, short_description, address', 'length', 'max'=>255),
			array('description', 'safe'),
			array('photo, date', 'length', 'max'=>128),
			array('organiser', 'length', 'max'=>64),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, news_category_id, name, photo, organiser, date, link, short_description, description, address, status', 'safe', 'on'=>'search'),
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
			'news_category_id' => 'News Category',
			'name' => 'Name',
			'photo' => 'Photo',
			'organiser' => 'Organiser',
			'date' => 'Date',
			'link' => 'Link',
			'short_description' => 'Short Description',
			'description' => 'Description',
			'address' => 'Address',
			'status' => 'Status',
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
		$criteria->compare('news_category_id',$this->news_category_id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('organiser',$this->organiser,true);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('link',$this->link,true);
		$criteria->compare('short_description',$this->short_description,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('status',$this->status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return News the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getList($category){
		$criteria=new CDbCriteria;
		$criteria->compare('news_category_id', $category, false);
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => false)
		));
	}
}
