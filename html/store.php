<?php require('inc/head.php');?>
<div class="wrapper stores">
  <div class="header">
    <div class="header-top">
      <a href="index.html" class="logo"><img src="images/logo.png" width="67"></a>
      <a href="#menu" class="pull-right" data-toggle="modal" role="button"><img src="images/menu.png" width="42"></a>
    </div>
  </div>
  <?php require('inc/store.php');?>
</div>
<?php
//menu
require('inc/menu.php');
//popup
require('inc/popup.php');
//store
require('inc/store-detail.php');
//js
require('inc/end.php');
?>
