<div class="header-top">
<a href="<?php echo Yii::app()->baseUrl;?>/" class="logo"><img src="<?php echo Yii::app()->baseUrl;?>/images/logo.png" width="50"></a>
<span class="menuicon pull-right"><img src="<?php echo Yii::app()->baseUrl?>/images/menu-icon.png" /></span>
<div class="menu-main pull-right">
  <a class="logo-m hidden-lg hidden-md" href="<?php echo Yii::app()->baseUrl;?>/" class="logo"><img src="<?php echo Yii::app()->baseUrl;?>/images/logo.png" width="67"></a>
  <a href="javascript:void(0)" class="menuclose pull-right hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/menu-close.png"/></a>
  <ul class="main-menu">
    <li><a href="<?php echo Yii::app()->baseUrl;?>/store.html"><span>Địa điểm</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/products.html"><span>Vật dụng</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/events.html"><span>Thông tin</span></a></li>
    <li><a href="<?php echo Yii::app()->baseUrl;?>/about.html"><span>Giới thiệu</span></a></li>
  </ul>
</div>
</div>
<?php Yii::app()->clientScript->registerScript('menu', '
$(".menuicon").click(function(){
  $(".menu-main").show();
})
$(".menuclose").click(function(){
  $(".menu-main").hide();
})
', CClientScript::POS_END);?>
