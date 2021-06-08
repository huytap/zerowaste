<div class="header-top">
<a href="<?php echo Yii::app()->baseUrl;?>/" class="logo"><img src="<?php echo Yii::app()->baseUrl;?>/images/logo.png" width="50"></a>
<span class="menuicon pull-right"><img src="<?php echo Yii::app()->baseUrl?>/images/menu-icon.png" /></span>
<div class="menu-main pull-right">
  <a class="logo-m hidden-lg hidden-md hidden-sm" href="<?php echo Yii::app()->baseUrl;?>/" class="logo"><img src="<?php echo Yii::app()->baseUrl;?>/images/logo.png" width="67"></a>
  <a href="javascript:void(0)" class="menuclose pull-right hidden-lg hidden-md hidden-sm"><img src="<?php echo Yii::app()->baseUrl?>/images/menu-close.png"/></a>
  <ul class="main-menu">
    <li><a href="<?php echo Yii::app()->baseUrl;?>/store.html"><span>Địa điểm</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/products.html"><span>Vật dụng</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/events.html"><span>Thông tin</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/about.html"><span>Giới thiệu</span></a></li>
    <?php
    if(Yii::app()->user->id>0){
	    $user=Users::model()->findByPk(Yii::app()->user->id);
	    	echo '<li class="user">';
			echo '<a href="javascript:void(0);" class="hidden-xs"><img src="'.Yii::app()->baseUrl.'/uploads/'.$user['avatar'].'" width="30"></a>';
			echo '<a href="'.Yii::app()->baseUrl.'site/logout" class="hidden-lg hidden-md hidden-sm">Thoát</a>';
			?>
			<ul class="submenu">
				<li><a href="<?php echo Yii::app()->baseUrl?>/site/logout">Thoát</a></li>
			</ul>
			<?php
		echo '</li>';
    }else{
    		echo '<li class="user"><a href="#loginPopup" data-toggle="modal"><span class="hidden-lg hidden-md hidden-sm">Đăng nhập</span><img src="'.Yii::app()->baseUrl.'/images/cta_sign-up.svg" width="30" class="hidden-xs"></a></li>';
	}?>
  </ul>
</div>
</div>
<?php require_once('login.php');?>
<?php require_once('register.php');?>
<?php require_once('forgot.php');?>
<?php require_once('reset.php');?>
<?php Yii::app()->clientScript->registerScript('menu', '
$(".menuicon").click(function(){
  $(".menu-main").show();
})
$(".menuclose").click(function(){
  $(".menu-main").hide();
})
', CClientScript::POS_END);?>
