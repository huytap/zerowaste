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
<?php if($related && $related->getData()){?>
<div class="headline">
  <div class="row">
    <div class="col-md-6">
	    <h3 class="title">Sự kiện liên quan
		    <a href="#" class="viewmore-store hidden-lg hidden-md hidden-sm"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="20"/></a>
	    </h3>
    </div>
    <div class="col-md-6 text-right hidden-xs">
	    <a href="<?php echo Yii::app()->baseUrl?>/events.html">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
  </div>
</div>
<div class="row event-lq">
	<?php
	foreach($related->getData() as $dt){?>
	  <div class="col-md-4">
	    <div class="event-items" data-href="<?php echo Yii::app()->baseUrl?>/events/<?php echo StringHelper::makeLink($dt['name']).'-'.$dt['id'];?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $dt['id'];?>">
		 <a href="javascript:void(0);" style="color:#<?php echo $background[$rand_keys]['title'];?>;"><img src="<?php echo Yii::app()->baseUrl?>/timthumb.php?src=<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $dt['photo'];?>&h=367&w=367" class="img-responsive"></a>
		 <div class="event-content" style="background:#<?php echo $background[$rand_keys]['content'];?>;">
		   <h4><a href="javascript:void(0);" style="color:#<?php echo $background[$rand_keys]['title'];?>;"><?php echo $dt['name'];?></a></h4>
		   <p><?php echo $dt['date'];?></p>
		   <p><?php echo $dt['address'];?></p>
		 </div>
	  </div>
	</div>
   <?php }?>
</div>
<?php
}
Yii::app()->clientScript->registerScript('loadNews2', '
$(".event-lq").find(".event-items").each(function(i, j){
  $(j).click(function(){
    let id = $(this).attr("data-id");
    $.ajax({
      url: "'.Yii::app()->baseUrl.'/ajax/news",
      data: {id: id},
      dataType: "html",
      type: "post",
      success: function(data){
        $("#news").html(data)
        $("#event-detail").modal({
            show: "false"
        });

  	   let current_url = $(j).attr("data-href");
  	   history.pushState(null, null, current_url);

  	   $("#btn-closeStoreDetail").click(function(){
    		 $("#event-detail").modal("hide");
    		 history.pushState(null, null, "'.Yii::app()->baseUrl.'/events.html");
  	   });

      }
    })
  });
})', CClientScript::POS_END);
