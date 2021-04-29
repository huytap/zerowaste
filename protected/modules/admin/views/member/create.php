<?php
$this->breadcrumbs = array(
    'Members'=>Yii::app()->createAbsoluteUrl("admin/users/admin"),
    'Add new'
);
?>
    <div class="page-header position-relative">
        <h1>Add new member</h1>
    </div><!--/.page-header-->
<?php
echo $this->renderPartial('_form', compact('model')); ?>
