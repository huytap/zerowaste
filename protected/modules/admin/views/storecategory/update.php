<?php
$this->breadcrumbs = array(
    'Ngành hàng' => array('admin'),
    'Cập nhật'
);?>
<div class="panel panel-default">
    <div class="panel-heading">Cập nhật</div>
    <div class="panel-body">
    	<?php $this->renderPartial('_form', compact('model'));?>
    </div>
</div>
