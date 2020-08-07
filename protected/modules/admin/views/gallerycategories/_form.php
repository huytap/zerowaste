<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'nearby-category-form',
    'enableClientValidation' => true,
    'enableAjaxValidation'=>true,
));?>
    <?php echo $form->errorSummary($model); ?>
    <div class="row">
       <div class="col-sm-3 form-group">
           <?php echo $form->labelEx($model,'name'); ?>
           <?php echo $form->NumberField($model, 'name', array('class' => 'form-control input-sm', 'placeholder' => 'Gallery Name'));?>
           <?php echo $form->error($model, 'name'); ?>
       </div>
	  <div class="form-group col-sm-3">
           <?php echo $form->labelEx($model,'store_id'); ?>
           <?php echo $form->dropDownlist($model, "store_id", array('Chọn địa điểm')+Store::model()->getList2(), array('class'=>'form-control')); ?>
	 </div>
	 </div>
	 <div class="row">
       <div class="form-group col-sm-3">
           <?php echo $form->labelEx($model,'status'); ?>
           <?php echo $form->dropDownlist($model, "status", ExtraHelper::$status, array('class'=>'form-control')); ?>
       </div>
</div>
    <div class="row">
        <div class="pull-right">
            <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </div>
<?php $this->endWidget(); ?>
