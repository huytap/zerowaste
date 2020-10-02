<div class="row">
  <div class="col-md-12">
    <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $model['large_photo'];?>" class="img-responsive">
  </div>
</div>
<div class="row event-content">
  <div class="col-md-9">
    <?php echo $model['description'];?>
    <div class="others">
      <div class="event-info">
          <p><?php echo $model['date'];?></p>
          <p><?php echo $model['address'];?></p>
      </div>
    </div>
  </div>
</div>
<div class="headline">
  <div class="row">
    <div class="col-md-6"><h3 class="title">Sự kiện liên quan</h3></div>
    <div class="col-md-6 text-right"><a href="<?php echo Yii::app()->baseUrl?>/events.html">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
  </div>
</div>
<div class="row event-lq">
	<?php
	foreach($related->getData() as $dt){?>
	  <div class="col-md-4">
	    <div class="event-items" data-href="<?php echo Yii::app()->baseUrl?>/events/<?php echo StringHelper::makeLink($dt['name']).'-'.$dt['id'];?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $dt['id'];?>">
		 <img src="<?php echo Yii::app()->baseUrl?>/timthumb.php?src=<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $dt['photo'];?>&h=367&w=367" class="img-responsive">
		 <div class="event-content" style="background:#<?php echo $background[$rand_keys]['content'];?>;">
		   <h4><a href="#event-detail" data-toggle="modal" style="color:#<?php echo $background[$rand_keys]['title'];?>;"><?php echo $dt['name'];?></a></h4>
		   <p><?php echo $dt['date'];?></p>
		   <p><?php echo $dt['address'];?></p>
		   <!--div class="popup">
			<p><?php echo $dt['short_description'];?></p>
			<div class="btnXemThem">
			  <a href="javascript:void(0);" class="btnViewmore">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right2.png"/></a>
			</div>
		</div-->
		 </div>
	  </div>
	</div>
   <?php }?>
</div>
