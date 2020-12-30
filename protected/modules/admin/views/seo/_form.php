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
  			<?php echo $form->labelEx($model, 'page', array('class' => 'control-label'));?>
  			<?php echo $form->dropDownlist($model, 'page', array('' => '-----')+Yii::app()->params['page'],array('class'=>'form-control')); ?>
  			<?php echo $form->error($model, 'page'); ?>
  		 </div>
  	  </div>
    </div>
    <div class="row">
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'meta_title');?>
           <?php echo $form->textField($model, 'meta_title', array('class' => 'form-control input-sm', 'placeholder' => 'Meta Title'));?>
           <?php echo $form->error($model, 'meta_title'); ?>
       </div>
   </div>
   <div class="row">
      <div class="col-sm-3 form-group">
 	    <?php echo $form->label($model, 'meta_description');?>
 	    <?php echo $form->textArea($model, 'meta_description', array('class' => 'form-control input-sm', 'placeholder' => 'Meta Description'));?>
 	    <?php echo $form->error($model, 'meta_description'); ?>
      </div>
  </div>
  <div class="row">
	  <div class="col-sm-6 form-group">
		 <?php echo $form->label($model, 'thumnail_url');?>
		 <?php echo $form->fileField($model, "thumnail_url", array('class' => '')); ?>
		 <?php echo $form->error($model, 'thumnail_url'); ?>
	  </div>
	</div>
	<div class="row">
	  <?php
	  if($model->thumnail_url){?>
		 <div class="col-sm-6 form-group">
			<?php echo '<img src="'.Yii::app()->baseUrl.'/uploads/'.$model->thumnail_url.'" width="100">';?>
		 </div>
	  <?php
	  }
	  ?>
	</div>
    <div class="row">
        <div class="col-sm-9">
            <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </div>
<?php $this->endWidget(); ?>
