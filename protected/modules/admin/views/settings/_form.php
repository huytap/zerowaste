<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'grid',
	'enableAjaxValidation'=>false,
)); ?>
	<?php echo $form->errorSummary($model); ?>
	<div class="panel panel-default">
	    <div class="panel-body">
	        <h3>Settings</h3>
	        <hr>
			<?php
			$config = json_decode($model->s_value, true);
		  
			if(Yii::app()->user->id == 1):?>
				<div class="row">
					<div class="col-lg-3">
						<div class="form-group">
							<?php echo $form->labelEx($model,'s_key'); ?>
							<?php echo $form->textField($model,'s_key', array('class'=>'form-control')); ?>
							<?php echo $form->error($model,'s_key'); ?>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<?php 
							if(is_array($config)){
								foreach($config as $key=> $setting):?>
					            	<div class="col-md-2"><?php echo ucwords(str_replace('_',' ',$key));?></div>
				            		<div class="col-md-10">
				            			<?php  echo CHtml::textArea("s_value[$key]",$setting, array('class' => 'form-control'));?>
					           		 </div>
							  <?php endforeach;
							  }else{?>						
								<?php echo $form->labelEx($model,'s_value'); ?>
                                <?php
                                    $this->widget('ext.editMe.widgets.ExtEditMe', array(
                                        'id' => 'description_'.$key,
                                        'height' => '250px',
                                        'width' => '100%',
                                        'model' => $model,
                                        'attribute' => "s_value",
                                        'toolbar' => Yii::app()->params['ckeditor'],
                                        'filebrowserBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html',
                                        'filebrowserImageBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html?type=Images',
                                        'filebrowserFlashBrowseUrl' => Yii::app()->baseUrl . '/ckfinder/ckfinder.html?type=Flash',
                                        'filebrowserUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
                                        'filebrowserImageUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                                        'filebrowserFlashUploadUrl' => Yii::app()->baseUrl . '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                                    ));
                                    ?> 
								<?php echo $form->error($model,'s_value'); ?>
								<?php 
							}?>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<?php echo $form->labelEx($model,'remarks'); ?>
							<?php echo $form->textArea($model,'remarks', array('class'=>'form-control')); ?>
							<?php echo $form->error($model,'remarks'); ?>
						</div>
					</div>
				</div>
			<?php
			else:?>
				<div class="row">
					<div class="col-lg-3">
						<div class="form-group">
							<label>Key</label>
							<?php echo $model->s_key; ?>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-group">
						<?php 
						if(is_array($config)){
							foreach($config as $key=> $setting):?>
				            	<div class="col-md-4"><?php echo ucwords(str_replace('_',' ',$key));?></div>
			            		<div class="col-md-8">
			            			<?php  echo CHtml::textField("s_value[$key]",$setting, array('class' => 'form-control'));?>
				           		 </div>
						  <?php endforeach;
						  }else{?>						
							<?php echo $form->labelEx($model,'s_value'); ?>
							<?php echo $form->textArea($model,'s_value', array('class'=>'form-control')); ?>
							<?php echo $form->error($model,'s_value'); ?>
							<?php 
						}?>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<?php echo $form->labelEx($model,'remarks'); ?>
							<?php echo $form->textArea($model,'remarks', array('class'=>'form-control')); ?>
							<?php echo $form->error($model,'remarks'); ?>
						</div>
					</div>
				</div>
			<?php
			endif;?>
			<div class="row">
				<div class="col-lg-12">
					<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-success')); ?>
				</div>
			</div>
		</div>
	</div>
<?php $this->endWidget(); ?>