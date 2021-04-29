<?php
$this->breadcrumbs = array(
    'Comments Control'
);
$this->menu=array(
	array('label'=>'Create new', 'url'=>array('create')),
);?>

<div class="panel panel-default">
    <div class="panel-heading">Comments List</div>
    <div class="panel-body">
        <?php $this->renderPartial('_grid', compact('model'));?>
    </div>
</div>
