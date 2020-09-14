<div class="row">
  <div class="col-md-12">
    <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $model['photo'];?>" class="img-responsive">
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
    <div class="col-md-6 text-right"><a href="#">Xem thêm <img src="images/icon-arrow-right.png"></a></div>
  </div>
</div>
<div class="row event-lq">
  <div class="col-md-4">
    <a href="#">
      <img src="images/event-lq1.png">
      <span>The International Premium Sourcing Fair Vietnam 2019</span>
    </a>
  </div>
  <div class="col-md-4">
    <a href="#">
      <img src="images/event-lq2.png">
      <span>VietRF/Coffee EXPRO 2019</span>
    </a>
  </div>
  <div class="col-md-4">
    <a href="#">
      <img src="images/event-lq3.png">
      <span>ELLE Workshop - Làm đẹp trong thời đại ô nhiễm</span>
    </a>
  </div>
</div>
