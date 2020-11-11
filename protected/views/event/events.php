<?php
$background = array(
  array('title' => '594dd0', 'content' => 'd8ebe7'),
  array('title' => '594dd0', 'content' => 'fef3d5')
);
?>
<style>
.banner{
	padding-top: 0;
}
</style>
<div class="wrapper">
   <div class="header">
      <?php $this->widget('MenuWidget');?>
      <div class="banner banner-event">
         <img src="<?php echo Yii::app()->baseUrl?>/images/event-bg-banner.png?v=001" class="img-responsive hidden-xs">
         <img src="<?php echo Yii::app()->baseUrl?>/images/event-bg-banner-m.png?v=001" class="img-responsive hidden-lg hidden-md">
      </div>
   </div>
   <div class="container events">
      <h3>
         eco events
      </h3>
      <div class="row">
         <?php
            foreach($model->getData() as $dt){
              $rand_keys = array_rand($background, 1); ?>
         <div class="col-md-4">
            <div class="event-item" data-href="<?php echo Yii::app()->baseUrl?>/events/<?php echo StringHelper::makeLink($dt['name']).'-'.$dt['id'];?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" style="background: #<?php echo $background[$rand_keys]['content'];?>;" data-id="<?php echo $dt['id'];?>">
               <img src="<?php echo Yii::app()->baseUrl?>/timthumb.php?src=<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $dt['photo'];?>&h=367&w=367" class="img-responsive">
               <div class="event-content" style="background:#<?php echo $background[$rand_keys]['content'];?>;">
                  <h4><a href="#event-detail" data-toggle="modal" style="color:#<?php echo $background[$rand_keys]['title'];?>;"><?php echo $dt['name'];?></a></h4>
                  <p><?php echo $dt['date'];?></p>
                  <p><?php echo $dt['address'];?></p>
                  <div class="popup">
                     <p><?php echo $dt['short_description'];?></p>
                     <div class="btnXemThem">
                        <a class="hidden-xs" href="javascript:void(0);" class="btnViewmore">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right2.png"/></a>
				    <span class="viewdetail hidden-lg hidden-md hidden-sm"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="16"></span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <?php }?>
      </div>
   </div>
</div>
<div id="event-detail" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" id="btn-closeStoreDetail" class="close"><span aria-hidden="true"><img src="images/btn_Close.png"></span></button>
         </div>
         <div class="modal-body">
            <div class="container" id="news">
            </div>
         </div>
      </div>
   </div>
</div>
<?php

Yii::app()->clientScript->registerScript('loadNews', '
function loadNews(){
  if($(window).width()>1024){
  	$(".events").find(".event-item").each(function(i, j){
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
  	})
  }else{
  	$(".events").find(".event-item").each(function(i, j){
  	  $(j).find(".viewdetail,a").click(function(){
  	    let id = $(j).attr("data-id");
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
  	})
  }
}

loadNews();
', CClientScript::POS_END);
