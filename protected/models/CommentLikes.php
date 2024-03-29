<?php

/**
 * This is the model class for table "comment_likes".
 *
 * The followings are the available columns in table 'comment_likes':
 * @property integer $id
 * @property integer $comment_id
 * @property integer $user_id
 * @property integer $likes
 */
class CommentLikes extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'comment_likes';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('comment_id, user_id, likes', 'required'),
			array('comment_id, user_id, likes', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, comment_id, user_id, likes', 'safe', 'on'=>'search'),
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
			'comment' => array(self::BELONGS_TO, 'Comment', 'comment_id'),
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
			'comment_id' => 'Comment',
			'user_id' => 'User',
			'likes' => 'Likes',
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
		$criteria->compare('comment_id',$this->comment_id);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('likes',$this->likes);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CommentLikes the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function checkLikeByCMT($comment_id, $user_id){
		$criteria=new CDbCriteria;

		$criteria->compare('comment_id',$comment_id, false);
		$criteria->compare('user_id',$user_id, false);

		return CommentLikes::model()->find($criteria);
	}
	public function getQuantity($comment_id){
		$criteria=new CDbCriteria;
		$criteria->compare('comment_id',$comment_id, false);
		return CommentLikes::model()->count($criteria);
	}

	public function getTotalLikeByMember($user_id){
		$criteria = new CDbCriteria;
		$criteria->together = true;
		$criteria->with = 'comment';
		$criteria->join = 'left JOIN comments as cmt ON cmt.id=t.comment_id';
		$criteria->condition = 't.user_id='.$user_id;
		/*$count = $this->count(array(
					'condition'=>'user_id = :cid',
					'params'=>array(
							':cid'=>$user_id,
					),
			 ));
			 return $count;*/
		return $this->count($criteria);
	}

	public function getListByMember($user_id){
		$criteria=new CDbCriteria;
		$criteria->compare('user_id', $user_id, false);
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			//'pagination' => array('pageSize' => 7)
		));
		$data->setPagination(false);

		return $data;
	}
}
