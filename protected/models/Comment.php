<?php

/**
 * This is the model class for table "comments".
 *
 * The followings are the available columns in table 'comments':
 * @property integer $id
 * @property integer $category_id
 * @property integer $user_id
 * @property string $content
 * @property integer $rating
 * @property string $date
 * @property string $title
 * @property string $price
 * @property integer $store_id
 */
class Comment extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'comments';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('category_id, user_id, content, rating, date, title, price, store_id', 'required'),
			array('category_id, user_id, rating, store_id', 'numerical', 'integerOnly'=>true),
			array('title', 'length', 'max'=>128),
			array('price', 'length', 'max'=>32),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, category_id, user_id, content, rating, date, title, price, store_id', 'safe', 'on'=>'search'),
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
			'category' => array(self::BELONGS_TO, 'Category', 'category_id'),
			'store' => array(self::BELONGS_TO, 'Store', 'store_id'),
			'user' => array(self::BELONGS_TO, 'Users', 'user_id')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'category_id' => 'Category',
			'user_id' => 'User',
			'content' => 'Content',
			'rating' => 'Rating',
			'date' => 'Date',
			'title' => 'Title',
			'price' => 'Price',
			'store_id' => 'Store',
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
		$criteria->compare('category_id',$this->category_id);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('content',$this->content,true);
		$criteria->compare('rating',$this->rating);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('title',$this->title,true);
		$criteria->compare('price',$this->price,true);
		$criteria->compare('store_id',$this->store_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 100)
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Comment the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getTotalComment($category_id, $rating = 0){
		if($rating){
			$count = $this->count(array(
		        'condition'=>'category_id = :cid and rating=:rt',
		        'params'=>array(
		            ':cid'=>$category_id,
				  ':rt' => $rating
		        ),
		     ));
		}else{
			$count = $this->count(array(
		        'condition'=>'category_id = :cid',
		        'params'=>array(
		            ':cid'=>$category_id,
		        ),
		     ));
		}
    		return $count;
	}

	public function getListByProduct($category_id){
		$criteria=new CDbCriteria;

		$criteria->compare('category_id',$category_id, false);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 3),
			'sort' => array('defaultOrder' => 'date desc')
		));
	}

	public function getListByMember($user_id){
		$criteria=new CDbCriteria;

		$criteria->addCondition('user_id='.$user_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 50),
			'sort' => array('defaultOrder' => 'date desc')
		));
	}

	public function getTotalCommentByMember($user_id){
		$count = $this->count(array(
					'condition'=>'user_id = :cid',
					'params'=>array(
							':cid'=>$user_id,
					),
			 ));
			 return $count;
	}
}
