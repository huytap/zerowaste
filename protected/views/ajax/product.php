<div class="col-md-5 col-xs-12"><img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $model['photo'];?>" /></div>
<div class="col-md-7 col-xs-12">
  <h3><?php echo $model['name'];?></h3>
  <?php echo $model['description'];?>
  <a href="<?php echo Yii::app()->baseUrl?>/store.html?filter=<?php echo $model['store_id'];?>" class="btncontact btn-buy">TÌM MUA</a>
</div>
