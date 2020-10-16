<?php

/**
 * This is the model class for table "store_brands".
 *
 * The followings are the available columns in table 'store_brands':
 * @property integer $id
 * @property integer $store_id
 * @property string $address
 * @property string $ward
 * @property string $district
 * @property string $phone
 * @property integer $status
 */
class StoreBrand extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'store_brands';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('store_id, address, status', 'required'),
			array('store_id, status', 'numerical', 'integerOnly'=>true),
			array('address,city', 'length', 'max'=>255),
			array('ward, district, phone', 'length', 'max'=>32),
			array('address_photo', 'length', 'max' => 128),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, store_id, address, ward, district, phone, status', 'safe', 'on'=>'search'),
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
			'store' => array(self::BELONGS_TO, 'Store', 'store_id')
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'store_id' => 'Store',
			'address' => 'Address',
			'ward' => 'Ward',
			'district' => 'District',
			'phone' => 'Phone',
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
		$criteria->compare('store_id',$this->store_id);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('ward',$this->ward,true);
		$criteria->compare('district',$this->district,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('status',$this->status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return StoreBrand the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function getDistrict($id){
		$criteria = new CDbCriteria;
		$criteria->compare('store_id', $id, false);
		return StoreBrand::model()->findAll($criteria);
	}

	public function getTotalStore(){
		return Store::model()->count();
	}

	public function getTotalByDist($dist){
		$criteria = new CDbCriteria;
		$criteria->compare('district', $dist, false);
		$data = StoreBrand::model()->findAll($criteria);
		return count($data);
	}
}
