<?php
$this->widget('booster.widgets.TbJsonGridView', array(
    'type' => 'table table-bordered table-condensed table-hover table-striped',
    'id' => 'grid',
    'dataProvider' => $model->search(0),
    'template' => "{items}\n{pager}",
    'htmlOptions' => array('class' => 'dataTables_wrapper'),
    'json' => true,
    'enableSorting' => false,
    'columns' => array(
        array(
            'header' => '#',
            'type' => 'raw',
            'value' => '$row+1',
            'headerHtmlOptions' => array('width' => 20,'style' => 'text-align:center;'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle')
        ),
        array(
            'name' => 'name',
            'header' => 'Album',
            'type' => 'raw',
            'headerHtmlOptions' => array('width' => 300,'style' => 'text-align:center;'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle','class' => 'main_name'),
            'value' => function($data){
                return $data->name;
            }
        ),
        array(
            'header' => 'Actions',
            'headerHtmlOptions' => array('width' => 280,'style' => 'text-align:center;width:80px'),
            'htmlOptions' => array('style' => 'text-align:center;vertical-align:middle;width:80px;'),
            'class' => 'booster.widgets.TbJsonButtonColumn',
            'template' => '{view} {update} {delete}'
        ),
    )
));
?>
