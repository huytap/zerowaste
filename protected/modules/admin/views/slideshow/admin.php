<?php
$this->breadcrumbs = array(
    'Home Slider',
);
$this->menu=array(
    array('label'=>'Create slider', 'url'=>array('create')),
);
?>
<div class="panel panel-default">
    <div class="panel-heading">Slider Control</div>
    <div class="panel-body">
        <?php $this->renderPartial('_grid_2', compact('model'));?>
    </div>
</div>