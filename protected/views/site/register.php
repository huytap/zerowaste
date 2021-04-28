<?php
$this->pageTitle=Yii::app()->name . ' - Đăng ký';
?>
<style>
.login-form {
    width: 340px;
    margin: 150px auto;
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgb(0 0 0 / 30%);
    padding: 30px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-group {
    margin-bottom: 1rem;
}
.login-form a{
	color:#007bff
}
.login-form a:hover {
    color: #0056b3;
    text-decoration: underline;
}
.errorMessage{
	color:red;
	padding-top: 5px;
}
</style>

<div class="wrapper stores">
  <div class="header">
      <?php $this->widget('MenuWidget');?>
  </div>
	<div class="container">
		<div class="login-form">
			<?php $form=$this->beginWidget('CActiveForm', array(
	 	    	'id'=>'login-form',
	 	    	'enableClientValidation'=>true,
	 	    	'clientOptions'=>array(
	 	    		'validateOnSubmit'=>true,
	 	    		'class' => 'no-margin'
	 	    	),
	 	    )); ?>
		        <h2 class="text-center">Đăng ký</h2>
			   <div class="form-group">
				  <?php echo $form->label($model, 'fullname');?>
 		            <?php echo $form->textField($model, 'fullname', array('class' => 'form-control input-sm', 'placeholder' => 'Họ tên'));?>
 		            <?php echo $form->error($model, 'fullname'); ?>
		        </div>
			   <div class="form-group">
				  <?php echo $form->label($model, 'username');?>
 		            <?php echo $form->textField($model, 'username', array('class' => 'form-control input-sm', 'placeholder' => 'Tên đăng nhập'));?>
 		            <?php echo $form->error($model, 'username'); ?>
		        </div>
			   <div class="form-group">
				  <?php echo $form->label($model, 'password');?>
 		            <?php echo $form->passwordField($model, 'password', array('class' => 'form-control input-sm', 'placeholder' => 'Mật khẩu'));?>
 		            <?php echo $form->error($model, 'password'); ?>
		        </div>
		        <div class="form-group">
		            <button type="submit" class="btn btn-primary btn-block">Đăng ký</button>
		        </div>
		    <?php $this->endWidget(); ?>
		    <p class="text-center"><a href="<?php echo Yii::app()->baseUrl?>/site/login">Đăng nhập</a></p>
		</div>
	</div>
</div>
