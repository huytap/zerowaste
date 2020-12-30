<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'grid',
    'enableClientValidation' => true,
    'htmlOptions' => array(
        'class' => 'no-margin',
        'enctype' => 'multipart/form-data',
    ),
));?>
    <?php echo $form->errorSummary($model); ?>
    <div class="row">
	    <div class="col-sm-3">
	        <div class="form-group">
	            <?php echo $form->labelEx($model, 'store_id', array('class' => 'control-label'));?>
	            <?php echo $form->dropDownlist($model, 'store_id', array('' => '--------------')+ Store::model()->getList2(),array('class'=>'form-control')); ?>
	            <?php echo $form->error($model, 'store_id'); ?>
	        </div>
	    </div>
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'address');?>
           <?php echo $form->textField($model, 'address', array('class' => 'form-control input-sm', 'placeholder' => 'Store address'));?>
           <?php echo $form->error($model, 'address'); ?>
       </div>
   </div>
  <div class="row">
     <div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'ward');?>
	    <?php echo $form->textField($model, 'ward', array('class' => 'form-control input-sm', 'placeholder' => 'Ward'));?>
	    <?php echo $form->error($model, 'ward'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'district');?>
	    <?php echo $form->dropDownlist($model, 'district',array('----------') + Yii::app()->params['district'], array('class' => 'form-control input-sm', 'placeholder' => 'District'));?>
	    <?php echo $form->error($model, 'district'); ?>
     </div>
</div>
<div class="row">
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'city');?>
	    <?php echo $form->textField($model, 'city', array('class' => 'form-control input-sm', 'placeholder' => 'Phone'));?>
	    <?php echo $form->error($model, 'city'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'phone');?>
	    <?php echo $form->textField($model, 'phone', array('class' => 'form-control input-sm', 'placeholder' => 'Phone'));?>
	    <?php echo $form->error($model, 'phone'); ?>
     </div>
  </div>
  <div class="row">
     <div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'lat');?>
	    <?php echo $form->textField($model, 'lat', array('class' => 'form-control input-sm', 'placeholder' => 'Lat'));?>
	    <?php echo $form->error($model, 'lat'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'lng');?>
	    <?php echo $form->textField($model, 'lng', array('class' => 'form-control input-sm', 'placeholder' => 'Lng'));?>
	    <?php echo $form->error($model, 'lng'); ?>
     </div>
</div>
  <div class="row">
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'address_photo');?>
           <?php echo $form->fileField($model, "address_photo"); ?>
           <?php echo $form->error($model, 'address_photo'); ?>
       </div>
       <?php
       if($model->address_photo){?>
           <div class="col-sm-3 form-group">
               <?php echo '<img src="'.Yii::app()->baseUrl.'/uploads/'.$model->address_photo.'" width="100">';?>
           </div>
       <?php
       }
       ?>
  </div>
  <div class="row">
	  <div class="col-sm-3">
		 <div class="form-group">
			<?php echo $form->labelEx($model, 'status', array('class' => 'control-label'));?>
			<?php echo $form->dropDownlist($model, 'status', ExtraHelper::$status,array('class'=>'form-control')); ?>
			<?php echo $form->error($model, 'status'); ?>
		 </div>
	  </div>
  </div>
    <div class="row">
        <div class="col-sm-9">
            <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </div>
<?php $this->endWidget(); ?>
