<?php
$this->breadcrumbs = array(
    'Nearby category' => array('admin'),
    'Create'
);?>
<div class="panel panel-default">
    <div class="panel-heading">Create new</div>
    <div class="panel-body">
    	<?php $this->renderPartial('_form', compact('model'));?>
    </div>
</div>
