<?php
$this->widget('booster.widgets.TbJsonGridView', array(
    'type' => 'table table-bordered table-condensed table-hover table-striped',
    'id' => 'grid',
    'dataProvider' => $model->search(),
    'htmlOptions' => array('class' => 'table table-bordered table-condensed table-hover table-striped'),
    'filter' => $model,
    'enableSorting' => false,
    'columns' => array(
        array('name'=> 'name', 'value' => function($data){
            return $data->name;
        }),
        array('name' => 'email', 'value' => function($data){
            return $data->email;
            }
        ),
        array('name' => 'who', 'value' => function($data){
            return $data->who;
            }
        ),
        array('name'=> 'invite', 'value' => function($data){
          $invite = array('shop' => 'Cửa hàng', 'product'=>'Sản phẩm', 'event' => 'Sự kiện');
            return $invite[$data->invite];
        },
        'filter' => CHtml::dropDownlist('Contact[invite]', '', array(''=>'All', 'shop' => 'Cửa hàng', 'product'=>'Sản phẩm', 'event' => 'Sự kiện'), array('class'=>' form-control'))
      ),
        array(
            'header' => 'Action',
            'headerHtmlOptions' => array('width' => 80,'style' => 'text-align:center;width:80px'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle;width:80px;'),
            'class' => 'booster.widgets.TbJsonButtonColumn',
            'template' => '{view} {delete}'
        ),
    )
));
?>
