<?php
$this->widget('booster.widgets.TbJsonGridView', array(
    'type' => 'table table-bordered table-condensed table-hover table-striped',
    'id' => 'grid',
    'dataProvider' => $model->search(),
    'htmlOptions' => array('class' => 'table table-bordered table-condensed table-hover table-striped'),
    'filter' => $model,
    'enableSorting' => false,
    'columns' => array(
	    array('name' => 'page', 'value' => function($data){
		   return $data->meta_description;
		   },
		   'filter' => CHtml::dropDownlist('Seo[page]', '', array(''=>'----')+Yii::app()->params['page'], array('class'=>'form-control'))
	    ),

        array('name'=> 'meta_title', 'value' => function($data){
            return $data->meta_title;
        }),
        array('name' => 'meta_description', 'value' => function($data){
            return $data->meta_description;
            },
        ),
	   array('name'=> 'thumnail_url', 'type'=>'html', 'value' => function($data){
		  return '<img src="'.Yii::app()->baseUrl.'/timthumb.php?src='.Yii::app()->baseUrl.'/uploads/'. $data['thumnail_url'].'&h=100&w=100" alt="">';
	   }),
        array(
            'header' => 'Action',
            'headerHtmlOptions' => array('width' => 80,'style' => 'text-align:center;width:80px'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle;width:80px;'),
            'class' => 'booster.widgets.TbJsonButtonColumn',
            'template' => '{update} {delete}'
        ),
    )
));
?>
