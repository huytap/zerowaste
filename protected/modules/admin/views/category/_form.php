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
	            <?php echo $form->labelEx($model, 'category', array('class' => 'control-label'));?>
	            <?php echo $form->dropDownlist($model, 'category', array('' => '--------------')+ StoreCategory::model()->getList2(),array('class'=>'form-control')); ?>
	            <?php echo $form->error($model, 'category'); ?>
	        </div>
	    </div>
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'name');?>
           <?php echo $form->textField($model, 'name', array('class' => 'form-control input-sm', 'placeholder' => 'Store Name'));?>
           <?php echo $form->error($model, 'name'); ?>
       </div>
   </div>
   <div class="row">
	   <div class="col-sm-12"><h3>List store</h3></div>
	   <?php
	   $stores = Store::model()->getList2();
	   foreach($stores as $key => $value){
		   $checked = '';
		   if (isset($model['store_id'])){
			  if(in_array($key, $model['store_id'])){
				 $checked = 'checked="checked"';
			  }
		   }
		   ?>
		   <div class="col-sm-2" style="margin-left:0%">
			  <div class="form-group">
				 <label class="label-checkbox inline">
					<input type="checkbox"  value="<?php echo $key;?>" name="Category[store_id][<?php echo $key ?>]" <?php echo $checked ?>/>
					<span class="custom-checkbox"></span> <?php echo ucwords($value) ?>
				 </label>
			  </div>
		   </div>
		   <?php
	   }
	   ?>
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
		 <?php echo $form->label($model, 'description');?>
		 <?php echo $form->error($model, 'description'); ?>
		 <?php
			$this->widget('ext.editMe.widgets.ExtEditMe', array(
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
			));
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
