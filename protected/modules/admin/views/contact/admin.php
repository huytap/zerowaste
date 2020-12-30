<?php
$this->breadcrumbs = array(
    'Contact Control'
);
/*$this->menu=array(
	array('label'=>'Create new', 'url'=>array('create')),
);*/?>

<div class="panel panel-default">
    <div class="panel-heading">Contact List</div>
    <div class="panel-body">
        <?php $this->renderPartial('_grid', compact('model'));?>
    </div>
</div>
