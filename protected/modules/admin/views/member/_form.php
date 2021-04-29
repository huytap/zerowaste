<?php
$form = $this->beginWidget('CActiveForm', array(
    'id' => 'grid',
    'enableClientValidation' => true,
    'htmlOptions' => array(
        'class' => 'no-margin',
    ),
));?>
        <div class="row">
            <div class="col-sm-6 col-md-4 form-group">
                <?php echo $form->labelEx($model, 'username'); ?>
                <?php echo $form->textField($model, 'username', array('placeholder' =>'Username','class'=>'form-control')); ?>
                <?php echo $form->error($model, 'username'); ?>
            </div>
	  </div>
	  <div class="row">
            <div class="col-sm-6 col-md-4 form-group">
                <?php echo $form->labelEx($model, 'fullname'); ?>
                <?php echo $form->textField($model, 'fullname', array('placeholder' =>'Full name','class'=>'form-control')); ?>
                <?php echo $form->error($model, 'fullname'); ?>
            </div>
     </div>
	<div class="row">
            <div class="col-sm-6 col-md-4 form-group">
                <?php echo $form->labelEx($model, 'password'); ?>
                <input type="password" name="Users[password]" placeholder="Password" class="form-control">
                <?php echo $form->error($model, 'password'); ?>
            </div>
   </div>
    <div class="row">
       <div class="col-sm-6 col-md-4 form-group">
		  <?php echo $form->labelEx($model, 'status'); ?>
           <?php echo $form->dropDownlist($model, 'status', ExtraHelper::$user_status, array('class'=>'form-control')); ?>
           <?php echo $form->error($model, 'status'); ?>
       </div>
    </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="form-actions">
                    <button class="btn btn-info submit-form-create" type="submit">
                        Save
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $this->endWidget(); ?>
