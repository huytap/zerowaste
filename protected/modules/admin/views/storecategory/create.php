<?php
$this->breadcrumbs = array(
    'Ngành hàng' => array('admin'),
    'Tạo mới'
);?>
<div class="panel panel-default">
    <div class="panel-heading">Tạo mới</div>
    <div class="panel-body">
    	<?php $this->renderPartial('_form', compact('model'));?>
    </div>
</div>
