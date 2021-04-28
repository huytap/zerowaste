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
  <h3>Custom field</h3>
  <?php
  $cf1 = Settings::model()->getSetting('custom_field_1');
  $cf1 = str_replace(array('<p>','</p>'), '', $cf1);
  for($i=0;$i<$cf1;$i++){
	  ?>
	  <div class="row">
   	    <div class="col-sm-3">
   	        <div class="form-group">
   	            <label>Title</label>
   	            <?php echo CHtml::textField('CustomField[title_'.$i.']', $model['field_custom_1']['title_'.$i], array('class'=>'form-control')); ?>
   	        </div>
   	    </div>
          <div class="col-sm-3 form-group">
              <label>Description</label>
              <?php echo CHtml::textArea('CustomField[description_'.$i.']', $model['field_custom_1']['description_'.$i], array('class' => 'form-control'));?>
          </div>
      </div>
	  <?php
  }
  ?>
  <div class="row">
	  <div class="col-md-9 form-group">
		 <?php echo $form->label($model, 'description');?>
		 <?php echo $form->error($model, 'description'); ?>
     	<?php echo $form->textArea($model, 'description');?>
	  </div>
   </div>
   <h3>Custom field 2</h3>
   <?php
   $cf2 = Settings::model()->getSetting('custom_field_2');
   $cf2 = str_replace(array('<p>','</p>'), '', $cf2);
   for($i=0;$i<$cf2;$i++){
 	  ?>
 	  <div class="row">
    	    <div class="col-sm-3">
    	        <div class="form-group">
    	            <label>Title</label>
    	            <?php echo CHtml::textField('CustomField2[title_'.$i.']', $model['field_custom_2']['title_'.$i], array('class'=>'form-control')); ?>
    	        </div>
    	    </div>
           <div class="col-sm-3 form-group">
               <label>Description</label>
               <?php echo CHtml::textArea('CustomField2[description_'.$i.']', $model['field_custom_2']['description_'.$i], array('class' => 'form-control'));?>
           </div>
       </div>
 	  <?php
   }
   ?>
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
        CKEDITOR.replace( 'Category[description]', {
			      allowedContent: 'p span'
			  });
</script>
