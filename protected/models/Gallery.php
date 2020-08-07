<?php

/**
 * This is the model class for table "galleries".
 *
 * The followings are the available columns in table 'galleries':
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $added_date
 * @property integer $updated_by
 * @property string $updated_date
 * @property string $updated_by
 */
class Gallery extends CActiveRecord
{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'galleries';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('updated_by, type, store_id', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>255),
			array('description, added_date, updated_date, updated_by', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, description, added_date, updated_by, updated_date, updated_by', 'safe', 'on'=>'search'),
		);
	}


	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'items' => array(self::HAS_MANY,'Item','gallery_id'),
//			'product_details' => array(self::HAS_MANY,'ProductDetail','gallery_id')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'store_id'=>'Địa điểm',
			'name' => 'Name',
			'description' => 'Description',
			'added_date' => 'Created Date',
			'updated_by' => 'Created By',
			'updated_date' => 'Updated Date',
			'updated_by' => 'Updated By',
		);
	}

	public function getGalleryByType($type, $hotel='', $roomtype_id=0){
		$criteria = new CDbCriteria;
		$criteria->compare('type', $type, false, 'AND');
		$criteria->compare('roomtype_id', $roomtype_id, false, 'AND');
		if($hotel){
				$criteria->compare('store_id', $hotel, false, 'AND');
		}
		$data = Gallery::model()->find($criteria);
		return $data;
	}

	public function getGalleryByType2($type, $hotel='', $roomtype_id=''){
		$criteria = new CDbCriteria;
		$criteria->compare('type', $type, false, 'AND');
		$criteria->addInCondition('roomtype_id', explode(',', $roomtype_id));
		if($hotel){
			$criteria->compare('store_id', $hotel, false, 'AND');
		}
		$data = Gallery::model()->findAll($criteria);
		$array = array();
		foreach($data as $dt){
			$array[] = $dt['id'];
		}
		return $array;
	}


	public function getList($type, $hotel='', $roomtype_id=0){
		$gallery = $this->getGalleryByType($type, $hotel, $roomtype_id);

		if($gallery){
			$criteria = new CDbCriteria;
			$criteria->compare('gallery_id', $gallery['id'], false);
			/*if(Yii::app()->controller->id=='site'){
				$criteria->limit=8;
			}*/
			$dataProvide = new CActiveDataProvider('Item', array(
				'criteria' => $criteria,
				'sort' => array('defaultOrder' => 'display_order ASC')));
			$dataProvide->setPagination(false);
			return $dataProvide;
		}else{
			return '';
		}
	}

	public function getList2($type, $hotel, $roomtype_id=0){
		$gallery = $this->getGalleryByType2($type, $hotel, $roomtype_id);
		if($gallery){
			$criteria = new CDbCriteria;
			$criteria->addInCondition('gallery_id', $gallery);
			$dataProvide = new CActiveDataProvider('Item', array(
				'criteria' => $criteria,
				'sort' => array('defaultOrder' => 'display_order ASC')));
			$dataProvide->setPagination(false);
			return $dataProvide;
		}else{
			return '';
		}
	}

	public function search($type=''){
		$criteria=new CDbCriteria;
		$criteria->compare('store_id', Yii::app()->session['hotel'],false, 'AND');
		$criteria->compare('id',$this->id);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('added_date',$this->added_date,true);
		$criteria->compare('updated_by',$this->updated_by);
		$criteria->compare('updated_date',$this->updated_date,true);
		$criteria->compare('updated_by',$this->updated_by,true);

		$criteria->compare('type', $type,false);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 100),
			
		));
	}

	public function getListbytype($type){
		$gallery = $this->getItemByGalleryType($type);
		if($gallery){
			$criteria = new CDbCriteria;
			$criteria->compare('gallery_id', $gallery['id'], false);
			$dataProvide = new CActiveDataProvider('Item', array(
				'criteria' => $criteria,
				'sort' => array('defaultOrder' => 'display_order ASC')));
			$dataProvide->setPagination(false);
			return $dataProvide;
		}else{
			return '';
		}
	}

	public function getListById($id){
		$criteria = new CDbCriteria;
		$criteria->compare('gallery_id', $id, false);
		$dataProvide = new CActiveDataProvider('Item', array(
			'criteria' => $criteria,
			'sort' => array('defaultOrder' => 'display_order ASC')));
		$dataProvide->setPagination(false);
		return $dataProvide;
	}

	public function getItemByGalleryType($type){
		$criteria = new CDbCriteria;
		$criteria->compare('name', $type, false);
		$gallery = Gallery::model()->find($criteria);
		return $gallery;
	}

	public function getLists($type){
		$criteria = new CDbCriteria;
		$criteria->compare('type', $type, false);
		$dataProvide = new CActiveDataProvider($this, array(
			'criteria' => $criteria,
		));
		$dataProvide->setPagination(false);
		return $dataProvide;
	}
}
