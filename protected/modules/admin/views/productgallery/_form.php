<?php
$form = $this->beginWidget('CActiveForm', array(
'id' => 'gallery-grid',
'enableClientValidation' => true,
'htmlOptions' => array(
    'class' => 'no-margin',
    'enctype' => 'multipart/form-data',
    ),
));
?>
<div class="row">
   <div class="col-sm-3 form-group">
	  <?php echo $form->labelEx($model,'name'); ?>
	  <?php echo $form->textField($model, 'name', array('class' => 'form-control input-sm', 'placeholder' => 'Gallery Name'));?>
	  <?php echo $form->error($model, 'name'); ?>
   </div>
	   <div class="form-group col-sm-3">
		  <?php echo $form->labelEx($model,'product_id'); ?>
		  <?php echo $form->dropDownlist($model, "product_id", array('Chọn sản phẩm')+Category::model()->getList2(), array('class'=>'form-control')); ?>
	  </div>
 </div>
<div class="row">
        <?php if(!isset($_GET['id'])){?>
        <div class="col-sm-3">
            <div class="form-group">
                <lebel>Photos</lebel>
                <input multiple="" type="file" name="items[]" />
            </div>
        </div>
    <?php }?>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <button class="btn btn-info" type="submit">
                <i class="icon-ok bigger-110"></i>
                Submit
            </button>
        </div>
    </div>
<?php $this->endWidget(); ?>
