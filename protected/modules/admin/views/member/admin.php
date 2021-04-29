<?php
$this->breadcrumbs = array(
    'Members'
);
$this->menu=array(
    array('label'=>'Add new user', 'url'=>array('create')),
);
?>
<div class="panel panel-default">
    <div class="panel-heading">Members Control</div>
    <div class="panel-body">
			<?php $this->renderPartial('_grid', compact(array('model')));?>
		</div>
	</div>
</div>
