<?php
$this->breadcrumbs = array(
    'Members'=>Yii::app()->createAbsoluteUrl("admin/users/admin"),
    'Update'
);
?>
    <div class="page-header position-relative">
        <h1>Update member</h1>
    </div><!--/.page-header-->
<?php
echo $this->renderPartial('_form', compact('model')); ?>
