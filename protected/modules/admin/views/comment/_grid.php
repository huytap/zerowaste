<?php
$this->widget('booster.widgets.TbJsonGridView', array(
    'type' => 'table table-bordered table-condensed table-hover table-striped',
    'id' => 'grid',
    'dataProvider' => $model->search(),
    'htmlOptions' => array('class' => 'table table-bordered table-condensed table-hover table-striped'),
    'filter' => $model,
    'enableSorting' => false,
    'columns' => array(
        array(
		   'header'=> 'Thành viên',
		   'value' => function($data){
            	return $data['user']['fullname'];
	        },
		   'filter' => CHtml::dropDownlist('Comment[user_id]', '', array(''=>'Tất cả')+Users::model()->getList(), array('class'=>'form-control'))
	   ),
        array('header' => 'Vật dụng', 'value' => function($data){
            return $data['category']['name'];
            },
            //'filter' => CHtml::dropDownlist('Category[type]', '', array(''=>'All')+Yii::app()->params['slide_type'], array('class'=>'form-control'))
        ),
        array('header' => 'Cửa hàng', 'value' => function($data){
            return $data['store']['name'];
            },
            //'filter' => CHtml::dropDownlist('Category[type]', '', array(''=>'All')+Yii::app()->params['slide_type'], array('class'=>'form-control'))
        ),
	   array('header' => 'Giá', 'value' => function($data){
            return $data['price'];
            },
            //'filter' => CHtml::dropDownlist('Category[type]', '', array(''=>'All')+Yii::app()->params['slide_type'], array('class'=>'form-control'))
        ),

	   array('header' => 'Ngày', 'value' => function($data){
            return $data['date'];
            },
            //'filter' => CHtml::dropDownlist('Category[type]', '', array(''=>'All')+Yii::app()->params['slide_type'], array('class'=>'form-control'))
        ),
        array(
            'header' => '#',
            'headerHtmlOptions' => array('width' => 80,'style' => 'text-align:center;width:80px'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle;width:80px;'),
            'class' => 'booster.widgets.TbJsonButtonColumn',
            'template' => '{view} {delete}'
        ),
    )
));
?>
