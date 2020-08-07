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
       <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'name');?>
           <?php echo $form->textField($model, 'name', array('class' => 'form-control input-sm', 'placeholder' => 'Store Name'));?>
           <?php echo $form->error($model, 'name'); ?>
       </div>
	  <div class="col-sm-3 form-group">
           <?php echo $form->label($model, 'email');?>
           <?php echo $form->textField($model, 'email', array('class' => 'form-control input-sm', 'placeholder' => 'Email'));?>
           <?php echo $form->error($model, 'email'); ?>
       </div>
   </div>
  <div class="row">
     <div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'website');?>
	    <?php echo $form->textField($model, 'website', array('class' => 'form-control input-sm', 'placeholder' => 'Link website'));?>
	    <?php echo $form->error($model, 'website'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'facebook');?>
	    <?php echo $form->textField($model, 'facebook', array('class' => 'form-control input-sm', 'placeholder' => 'Facebook'));?>
	    <?php echo $form->error($model, 'facebook'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'instagram');?>
	    <?php echo $form->textField($model, 'instagram', array('class' => 'form-control input-sm', 'placeholder' => 'Instagram'));?>
	    <?php echo $form->error($model, 'instagram'); ?>
     </div>
  </div>
  <div class="row">
     <div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'youtube');?>
	    <?php echo $form->textField($model, 'youtube', array('class' => 'form-control input-sm', 'placeholder' => 'Youtube'));?>
	    <?php echo $form->error($model, 'youtube'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'shopee');?>
	    <?php echo $form->textField($model, 'shopee', array('class' => 'form-control input-sm', 'placeholder' => 'Shopee'));?>
	    <?php echo $form->error($model, 'shopee'); ?>
     </div>
	<div class="col-sm-3 form-group">
	    <?php echo $form->label($model, 'lazada');?>
	    <?php echo $form->textField($model, 'lazada', array('class' => 'form-control input-sm', 'placeholder' => 'Lazada'));?>
	    <?php echo $form->error($model, 'lazada'); ?>
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
	  <div class="col-sm-12"><h3>Ngành hàng</h3></div>
	  <?php
	  $stores = StoreCategory::model()->getList2();
	  foreach($stores as $key => $value){
		  $checked = '';
		  if (isset($model['store_category_id']) && $model['store_category_id']){
			 if(in_array($key, $model['store_category_id'])){
				$checked = 'checked="checked"';
			 }
		  }
		  ?>
		  <div class="col-sm-2" style="margin-left:0%">
			 <div class="form-group">
				<label class="label-checkbox inline">
				    <input type="checkbox"  value="<?php echo $key;?>" name="Store[store_category_id][<?php echo $key ?>]" <?php echo $checked ?>/>
				    <span class="custom-checkbox"></span> <?php echo ucwords($value) ?>
				</label>
			 </div>
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
        <div class="col-sm-9">
            <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </div>
<?php $this->endWidget(); ?>
