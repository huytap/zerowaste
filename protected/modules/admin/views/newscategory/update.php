<?php
$this->breadcrumbs = array(
    'News Category Control' => array('admin'),
    'Update'
);?>
<div class="panel panel-default">
    <div class="panel-heading">Update</div>
    <div class="panel-body">
    	<?php $this->renderPartial('_form', compact('model'));?>
    </div>
</div>
