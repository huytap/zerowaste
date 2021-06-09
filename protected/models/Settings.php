<?php
class Settings extends CActiveRecord{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return 'system_settings';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('s_key, s_value', 'required'),
			array('updated_by', 'numerical', 'integerOnly'=>true),
			array('s_key', 'length', 'max'=>32),
			array('s_value, remarks', 'safe'),
			array('added_date, updated_date', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, s_key, s_value, remarks, added_date', 'safe', 'on'=>'search'),
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
			's_key' => 'Key',
			's_value' => 'Value',
			'added_date' => 'added_date',
			'remarks' => 'Remarks'
		);
	}

	public function search(){
		$criteria=new CDbCriteria;
		$criteria->compare('id',$this->id);
		$criteria->compare('s_key',$this->s_key,true);
		$criteria->compare('s_value',$this->s_value,true);
		$criteria->compare('added_date',$this->added_date,true);
		$criteria->compare('remarks',$this->remarks,true);
		$data = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
		$data->setPagination(false);
		return $data;
	}

	public function getSetting($key) {
		$ret = FALSE;
		$criteria=new CDbCriteria;
		$criteria->compare('s_key',$key,false);
		$dataProvider = new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
		$dataProvider->setPagination(false);
		$arrTheList = array();
		$arrTheList = $dataProvider->getData();
		$arrCates = array();
		if(is_array($arrTheList)){
			foreach($arrTheList as $k => $v){
				$ret = $v['s_value'];
				break;
			}
		}
		return $ret;
	}
	public function getSystemSettingByKey($key){
		$criteria = new CDbCriteria;
		$criteria->compare('s_key', $key, false);
		$model = SystemSettings::model()->find($criteria);
		return $model;
	}
}
