<?php
$this->pageTitle=Yii::app()->name . ' - Đăng nhập';
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
		        <h2 class="text-center">Đăng nhập</h2>
			   <div class="form-group">
				  <?php echo $form->label($model, 'username');?>
 		            <?php echo $form->textField($model, 'username', array('class' => 'form-control input-sm', 'placeholder' => 'Tên đăng nhập'));?>
 		            <?php echo $form->error($model, 'username'); ?>
		        </div>
			   <div class="form-group">
				  <?php echo $form->label($model, 'password');?>
 		            <?php echo $form->textField($model, 'password', array('class' => 'form-control input-sm', 'placeholder' => 'Mật khẩu'));?>
 		            <?php echo $form->error($model, 'password'); ?>
		        </div>
		        <div class="form-group">
		            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
		        </div>
		    <?php $this->endWidget(); ?>
		    <p class="text-center"><a href="<?php echo Yii::app()->baseUrl?>/site/register">Đăng ký tài khoản</a></p>
		</div>
	</div>
</div>
