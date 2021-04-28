<?php

/**
 * This is the model class for table "stores".
 *
 * The followings are the available columns in table 'stores':
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $website
 * @property string $facebook
 * @property string $instagram
 */
class Store extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'stores';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, description, photo, store_category_id', 'required'),
			array('name, logo, website, facebook, instagram, youtube, lazada, shopee', 'length', 'max'=>255),
			array('photo, large_photo, email', 'length', 'max' => 128),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, description, website, facebook, instagram', 'safe', 'on'=>'search'),
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
			'description' => 'Description',
			'website' => 'Website',
			'facebook' => 'Facebook',
			'instagram' => 'Instagram',
			'store_category_id' => 'Ngành hàng'
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
		$criteria->compare('description',$this->description,true);
		$criteria->compare('website',$this->website,true);
		$criteria->compare('facebook',$this->facebook,true);
		$criteria->compare('instagram',$this->instagram,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => false
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Store the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getList(){
		$criteria=new CDbCriteria;
		if(isset($_GET['filter'])){
			$criteria->addInCondition('id', explode(',',$_GET['filter']), 'OR');
		}
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 12)
		));
	}

	public function getList2(){
		$criteria=new CDbCriteria;
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => false
		));
		$arrData = array();
		foreach($data->getData() as $dt){
			$arrData[$dt['id']] = $dt['name'];
		}

		return $arrData;
	}

	public function getListSearch($cate, $where, $text_search){
		$criteria=new CDbCriteria;
		$criteria->select = 'distinct t.name, t.photo, t.logo, t.description, t.store_category_id, t.id';

		if(isset($_POST['filter']) && $_POST['filter']){
			$f = explode('_', $_POST['filter']);
			if($f[0] == 'filter'){
				$criteria->addInCondition('t.id', explode(',',$f[1]), 'OR');
			}else{

			}

		}
		if($text_search){
			$criteria->addCondition('name like "%'.$text_search.'%"');
		}elseif($where || $cate){
			if($cate)
				$criteria->addCondition('FIND_IN_SET("'.$cate.'", store_category_id)');
			if($where){
				$criteria->addCondition('store_brands.district="'.$where.'"');
				$criteria->join = 'LEFT JOIN store_brands ON store_brands.store_id = t.id';
				//$criteria->group = 'GROUP BY t.id';
			}
		}

		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => false
		));

		return $data;
	}

	public function getListNear($id, $store){
		$criteria=new CDbCriteria;
		$criteria->addCondition('store_brands.district="'.$store[0]['district'].'" AND t.id!='.$id);
		$criteria->join = 'LEFT JOIN store_brands ON store_brands.store_id = t.id';
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 3)
		));

		return $data;
	}

	public function getListRelated($id, $store){
		$criteria=new CDbCriteria;
		$criteria->addCondition('FIND_IN_SET("'.$store['store_category_id'].'", `store_category_id`) AND t.id!='.$id);
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => array('pageSize' => 3)
		));

		return $data;
	}

	public function getOne($id){
		$model = Store::model()->findByPk($id);
		return $model;
	}

	public function getByCategory($store_id){
		$criteria=new CDbCriteria;
		$criteria->addInCondition('id', explode(',', $store_id));
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination' => false
		));
		$arrData = array();
		//echo"<pre>";print_r($data->getData());die;
		if($data && count($data->getData())){
			foreach($data->getData() as $dt){
				$arrData[$dt['id']] = $dt['name'];
			}
		}
		return $arrData;
	}
}
