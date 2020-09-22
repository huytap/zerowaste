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
	            <?php echo $form->labelEx($model, 'news_category_id', array('class' => 'control-label'));?>
	            <?php echo $form->dropDownlist($model, 'news_category_id', array('' => '--------------')+ NewsCategory::model()->getList2(),array('class'=>'form-control')); ?>
	            <?php echo $form->error($model, 'news_category_id'); ?>
	        </div>
	    </div>
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'name');?>
           <?php echo $form->textField($model, 'name', array('class' => 'form-control input-sm', 'placeholder' => 'Title'));?>
           <?php echo $form->error($model, 'name'); ?>
       </div>
   </div>
  <div class="row">
     <div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'organiser');?>
	    <?php echo $form->textField($model, 'organiser', array('class' => 'form-control input-sm', 'placeholder' => 'Organiser'));?>
	    <?php echo $form->error($model, 'organiser'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'date');?>
	    <?php echo $form->textField($model, 'date', array('class' => 'form-control input-sm', 'placeholder' => 'Date'));?>
	    <?php echo $form->error($model, 'date'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'link');?>
	    <?php echo $form->textField($model, 'link', array('class' => 'form-control input-sm', 'placeholder' => 'Link'));?>
	    <?php echo $form->error($model, 'link'); ?>
     </div>
  </div>
  <div class="row">
     <div class="col-sm-6 form-group">
	    <?php echo $form->label($model, 'address');?>
	    <?php echo $form->textField($model, 'address', array('class' => 'form-control input-sm', 'placeholder' => 'Address'));?>
	    <?php echo $form->error($model, 'address'); ?>
     </div>
</div>
  <div class="row">
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'photo');?>
           <?php echo $form->fileField($model, "photo"); ?>
           <?php echo $form->error($model, 'photo'); ?>
       </div>
       <?php
       if($model->photo){?>
           <div class="col-sm-3 form-group">
               <?php echo '<img src="'.Yii::app()->baseUrl.'/uploads/'.$model->photo.'" width="100">';?>
           </div>
       <?php
       }
       ?>
  </div>
  <div class="row">
	  <div class="col-md-9 form-group">
		 <?php echo $form->label($model, 'short_description');?>
		 <?php echo $form->textArea($model, 'short_description', array('class' => 'form-control input-sm', 'placeholder' => 'Short description'));?>
		 <?php echo $form->error($model, 'short_description'); ?>
	  </div>
   </div>
  <div class="row">
	  <div class="col-md-9 form-group">
		 <?php echo $form->label($model, 'description');?>
		 <?php echo $form->error($model, 'description'); ?>
     <?php echo $form->textArea($model, 'description');?>
		 <?php
			/*$this->widget('ext.editMe.widgets.ExtEditMe', array(
			    'id' => 'description_',
			    'height' => '250px',
			    'width' => '100%',
			    'model' => $model,
			    'attribute' => "description",
			    'toolbar' => Yii::app()->params['ckeditor'],
			    'filebrowserBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html',
			    'filebrowserImageBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html?type=Images',
			    'filebrowserFlashBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html?type=Flash',
			    'filebrowserUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
			    'filebrowserImageUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
			    'filebrowserFlashUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			));*/
			?>
	  </div>
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

<script>
        CKEDITOR.replace( 'News[description]', {
			      allowedContent: 'p span'
			  });
</script>
