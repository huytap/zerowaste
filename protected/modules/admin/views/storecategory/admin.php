<?php
$this->breadcrumbs = array(
    'Ngành hàng'
);
$this->menu=array(
	array('label'=>'Tạo mới', 'url'=>array('create')),
);?>

<div class="panel panel-default">
    <div class="panel-heading">Ngành hàng</div>
    <div class="panel-body">
        <?php $this->renderPartial('_grid', compact('model'));?>
    </div>
</div>
