<?php

?>
<div class="wrapper">
  <div class="header">
    <?php $this->widget('MenuWidget');?>
  </div>
  <div class="product-details">
	  <div class="detail-header">
	    <div class="container">
		    <div class="breadcrum">
		         <a href="<?php echo Yii::app()->baseUrl?>/products.html">Vật dụng</a>
		         <span>/</span>
		         <span><?php echo $model['name'];?></span>
		    </div>
		    <div class="row">
			    <div class="col-md-4 col-xs-12" id="ptgallery">
			    	<div class="swiper-container">
			    	  <div class="swiper-wrapper">
			    		<?php
			    		if($gallery)
			    		foreach($gallery->getData() as $gl){
			    			echo '<div class="swiper-slide"><img src="'.Yii::app()->baseUrl.'/uploads/gallery/'.$gl['name'].'" class="img-responsive" /></div>';
			    		}?>
			    	  </div>
			    	  <div class="swiper-pagination"></div>
			    	</div>
			    </div>
			    <?php
			    $total_comment = Comment::model()->getTotalComment($model['id']);

			    $arr_star = array();
			    $total_rating = 0;
			    for($i=1;$i<=5;$i++){
				    $arr_star[$i] = Comment::model()->getTotalComment($model['id'], $i);
				    $total_rating += $i*$arr_star[$i];
			    }
			    ?>
			    <div class="col-md-8 col-xs-12">
				    <div class="star">
					    <ul>
						    <?php if($total_comment == 0){
							?>
								<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
								<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
								<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
								<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
								<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
								<?php
							}else{
								$total_rating = ExtraHelper::round_up(round($total_rating/$total_comment,1), 1);
								echo ExtraHelper::showStarList($total_rating);
								?>

						    <?php }?>
					    </ul>
					    <span><?php echo $total_comment;?> đánh giá</span>
					</div>
				      <h3 class="prTitle"><?php echo $model['name'];?></h3>
				      <?php //echo $model['description'];?>
				      <?php
				      if($model['field_custom_1']){
				      $cf1 = json_decode($model['field_custom_1'], true);
				      $st1 = Settings::model()->getSetting('custom_field_1');
				      $st1 = str_replace(array('<p>','</p>'), '', $st1);
				      if(count($cf1)){?>
				    	  <div class="pr-des row">
				    		  <?php for($i=0;$i<$st1;$i++){?>
				    		  <div class="col-md-3 col-sm-3 col-xs-6">
				    			  <h4><?php echo $cf1['title_'.$i];?></h4>
				    			  <p><?php echo $cf1['description_'.$i];?></p>
				    		  </div>
				    	  <?php }?>
				    	  </div>
				    	  <?php }
				    	}
				      ?>
					 <div class="timmua"><a href="<?php echo Yii::app()->baseUrl?>/store.html?filter=<?php echo $model['store_id'];?>" class="btncontact btn-buy">TÌM MUA</a></div>
			    </div>
		    </div>
	    </div>
    </div>

    <div class="container">
	    <div class="row section2">
		    <div class="col-md-4 col-sm-5 col-xs-12 photo-cover">
			    <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $model['photo'];?>" class="img-responsive">
		    </div>
		    <div class="col-md-8 col-sm-7 col-xs-12">

			    <?php
	   		      if($model['field_custom_2']){
	   		      $cf2 = json_decode($model['field_custom_2'], true);
	   		      $st2 = Settings::model()->getSetting('custom_field_2');
	   		      $st2 = str_replace(array('<p>','</p>'), '', $st2);
	   		      if(count($cf2)){?>
					 <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

	   		    		  <?php for($i=0;$i<$st1;$i++){?>
						  <div class="panel panel-default">
	        				      <div class="panel-heading" role="tab" id="heading<?php echo $i;?>">
	        				         <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" data-target="#collapse<?php echo $i;?>" aria-expanded="<?php if($i==0) echo 'true';else echo 'false';?>" aria-controls="collapse<?php echo $i;?>">
	        				            <?php echo $cf2['title_'.$i];?>
								  <span></span>
	        				         </h4>
	        				      </div>
	        				      <div id="collapse<?php echo $i;?>" class="panel-collapse collapse <?php if($i==0) echo 'in';?>" role="tabpanel" aria-labelledby="heading<?php echo $i;?>">
	        				         <div class="panel-body">
	        				            <?php echo $cf2['description_'.$i];?>
	        				         </div>
	        				      </div>
	        				   </div>

	   		    	  <?php }?>
	   		    	  </div>
				 <?php }
			 	}?>
		    </div>
	    </div>

    </div>

    <div class="comment">
	    <div class="container">
		    <div class="row">
     		    <div class="col-md-4 col-xs-12">
     			    <div class="tablepoint">
     				    <span class="points">
						    <?php
						    if($total_comment){
							    echo ExtraHelper::round_up($total_rating, 1);
						    }else{
							    echo 0;
						    }?>
					    </span>
     				    <div class="stars">
     					    <ul>
							    <?php if($total_comment == 0){
								?>
									<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
									<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
									<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
									<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
									<li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="22"/></li>
									<?php
								}else{
									echo ExtraHelper::showStarList($total_rating);
									?>
							    <?php }?>
     					    </ul>
     					    <span><?php echo $total_comment;?> nhận xét</span>
     				    </div>
     			    </div>
     			    <div class="detailp">
     				    <ul class="">
						    <?php
						    for($i=5;$i>=1;$i--){?>
	     					    <li>
	     						    <span class="star-number"><?php echo $i;?></span> <img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate.svg" width="22"/>
	     						    <span class="progress">
	     							    <span class="progress-bar" role="progressbar" aria-valuenow="<?php echo round($arr_star[$i]/($total_comment>0?$total_comment:1),1);?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo round($arr_star[$i]/($total_comment>0?$total_comment:1)*100,1);?>%"></span>
	     						    </span>
								    <?php echo round($arr_star[$i],1);?>
	     					    </li>
						    <?php }?>
     				    </ul>
     			    </div>
     		    </div>
     		    <div class="col-md-8 col-xs-12">
				    <h3 class="cmtTitle">Viết nhận xét của bạn</h3>
				    <a class="box-cmt" data-toggle="modal" data-target="#popupCmt" href="#">
					    <div class="row">
						    <div class="col-md-4 col-sm-4">
							    <h4>Đánh giá</h4>
							    <ul class="starlist">
	     						    <li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate.svg" width="28"/></li>
	     						    <li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-1.svg" width="28"/></li>
	     						    <li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="28"/></li>
								    <li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="28"/></li>
								    <li><img src="<?php echo Yii::app()->baseUrl?>/images/icn_rate-2.svg" width="28"/></li>
	     					    </ul>
						    </div>
						    <div class="col-md-8 col-sm-8">
							    <?php echo Settings::model()->getSetting('comment_content');?>
							    <div class="text-center">
								    <span class="btncontact btnWrite">VIẾT NHẬN XÉT</span>
							    </div>
						    </div>
					    </div>
				    </a>
			    </div>
     	    </div>
		</div>
    </div>
	<?php if($comments && count($comments->getData())){?>
	    <div class="box-comment" id="box-comment">
		    <div class="container">
			    <div class="row">
				    <div class="col-sm-4 col-xs-12">&nbsp;</div>
				    <div class="col-md-8 col-xs-12">
					    <h3 class="title-box">Nhận xét <span><?php echo $total_comment;?></span></h3>
					    <?php
					    $this->widget('zii.widgets.CListView', array(
						    'id' => 'listcomment',
						    'dataProvider'=> $comments,
						    'itemView'=>'_item_comment',
						    'ajaxUpdate'=>false,
						    'ajaxUpdate'=> 'listcomment',
						    'afterAjaxUpdate' => 'likeCMT',
						    'ajaxVar' => 'id',
						    //'ajaxUrl'=>array($this->getRoute()),
						    'enablePagination'=>true,
						    'template' => '{items}{pager}',

						    'pager' => array(
							    'id' => 'pager',
							    //'listViewId' => 'listcomment',
							    //'class' => 'ext.infiniteScroll.IasPager',
							    'header' => '',
							    'nextPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination@2x.png" width="36">',
							    'prevPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination_left.png" width="36">'
						    ),
						));
					    //foreach($comments->getData() as $cmt){

					     //}?>

				    </div>
			    </div>
		    	</div>
	    </div>
	<?php }?>
  </div>
</div>
<div id="popupCmt" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
	<div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
         </div>
         <div class="modal-body">
			  <div class="detail-header">
			    <div class="container">
				    <h3>Viết nhận xét của bạn<br/>về <spa id="categoryName"><?php echo $model['name'];?></span></h3>
				    <?php echo $model['review_description'];?>
			    </div>

		    </div>
		    <form enctype="multipart/form-data" id="form" method="post">
			    <input type="hidden" name="Comment[rating]" id="star">
			    <input type="hidden" name="Comment[category_id]" value="<?php echo $model['id'];?>">
		    <div class="formsubmit">
			    <div class="box-cmt">
				    <div class="row">

						    <div class="col-md-4">
							    <h4>Đánh giá</h4>
							    <ul class="starlist">
								    <li></li>
								    <li></li>
								    <li></li>
								    <li></li>
								    <li></li>
							    </ul>
							    <h4>MUA TỪ</h4>
							    <div class="custom-select field" style="width:100%;" id="store">
								    <?php $stores = Store::model()->getByCategory($model['store_id']);
								    ?>
								  <select name="Comment[store_id]">
									  <option value="">Chọn cửa hàng</option>
									  <?php foreach($stores as $key => $dt){
										  echo '<option value="'.$key.'">'.$dt.'</option>';
									  }
									  ?>
								  </select>
							  </div>
							  <h4>TẦM GIÁ</h4>
							  <div class="custom-select field" style="width:100%;" id="price">
								  <select name="Comment[price]">
									  <option value="">Chọn tầm giá</option>
									  <?php
									  $price = array(
										'Dưới 50.000 VND',
										'Từ 50.000 - 100.000 VND',
										'Từ 100.000 - 150.000 VND',
										'Từ 150.000 - 200.000 VND',
										'Từ 200.000 - 250.000 VND',
										'Từ 250.000 - 300.000 VND',
										'Từ 300.000 - 350.000 VND',
										'Từ 350.000 - 400.000 VND',
										'Trên 400.000 VND'
									  );
									  foreach($price as $dt){
										  echo '<option value="'.$dt.'">'.$dt.'</option>';
									  }
									  ?>
								  </select>
							  </div>
						    </div>
						    <div class="col-md-8">
							    <h4>TIÊU ĐỀ</h4>
							    <input type="text" id="title" placeholder="Rẻ mà bền nữa" name="Comment[title]">
							    <?php
							    $background = array(
								 '#DFF2F6','#FFE6E6', '#C2E6DA'
							    );
							    ?>
							    <ul class="listTag">
								    <?php $list = CommentList::model()->getList();
								    foreach($list as $k=>$v){
									    $rand_keys = array_rand($background, 1);
									    echo '<li data="'.$v.'" style="background:'.$background[$rand_keys].'">'.$v.'</li>';
								    }?>
							    </ul>
							    <h4>NỘI DUNG</h4>
							    <textarea rows="4" name="Comment[content]" id="message" placeholder="<?php echo strip_tags(Settings::model()->getSetting('comment_content'));?>"></textarea>
							    <h4>UPLOAD ẢNH <span>(tối đa 5 ảnh)</span></h4>
							    <div class="listphoto">
								    <div id="listPT"></div>
							    	    <div class="loadImg"><input name="items[]" maxlength="2" multiple type="file" id="imgUpload"></div>
							    </div>
							    <p id="messagesuccess">Cảm ơn bạn đã gửi nhận xét!</p>
						    </div>

				    </div>
			    </div>
			    <div class="row">
				    <div class="col-xs-12 text-center">
					    <button type="submit" class="submitForm"><img width="215" src="<?php echo Yii::app()->baseUrl?>/images/btn_tim-mua@2x.png"></button>
				    </div>
				</div>
		    </div>
		    </form>
		  </div>
	  </div>
	 </div>
</div>
<?php if($comments && count($comments->getData()) == 0){
	//Yii::app()->clientScript->registerScriptFile('https://code.jquery.com/jquery-2.2.0.min.js', CClientScript::POS_HEAD);
}
	?>
<?php Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/css/swiper-bundle.min.css');?>
<?php Yii::app()->clientScript->registerCss('cssStore', '
  .swiper-container {
     width: 100%;
     height: 100%;
	 padding: 0 0 40px;
   }
   .swiper-pagination-bullet {
     width: 16px;
     height: 16px;
     border:2px solid #000;
     background:transparent;
     opacity:1;
 }
 .swiper-pagination-bullet-active{
	 background:#fdc10f;
 }
 .swiper-slide{
	 border:0;
 }
 #product-detail{
	 border-radius:10px;
	 padding: 50px 50px 65px;
 }
 .modal-body{
	 padding-bottom: 100px!important;
 }
');?>
<?php Yii::app()->clientScript->registerScriptFile("https://code.jquery.com/jquery-2.2.0.min.js", CClientScript::POS_HEAD);?>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/swiper-bundle.min.js', CClientScript::POS_END);?>
<?php
Yii::app()->clientScript->scriptMap=array(

        'jquery.js'=>false,
        'jquery.ba-bbq.js' => false

);
?>
<?php Yii::app()->clientScript->registerScript('product', '
$(document).ready(function(){
  $(function(){
	  var hash = window.location.hash;
    if(hash.length)
	   $("html, body").animate({ scrollTop: $(hash).offset().top });
	});
 var swiper = new Swiper(".swiper-container", {
	  slidesPerView: 1,
	  centeredSlides: true,
	  grabCursor: true,
   	  pagination: {
	   	el: ".swiper-pagination",
    	  clickable: true,
	 },
     });
});

//check login
$(".btncontact.btnWrite").unbind().click(function(){
	let uid = "'.Yii::app()->user->id.'";
	if(uid.length){

	}else{
		$("#loginPopup").modal("show");
	}
})

$(".formsubmit ul.starlist li").each(function(i,j){
	$(j).unbind().click(function(){
		$(".formsubmit ul.starlist li").removeClass("active")
		for(var ii=0;ii<=i;ii++){
			$(".formsubmit ul.starlist").find("li:nth-child("+(ii+1)+")").addClass("active")
		}
		$("#star").val((i+1));
	})

});

$(".listTag li").each(function(ii, jj){
	$(jj).unbind().click(function(){
		$(".listTag li").removeClass("active")
		$(jj).addClass("active")
		let txt = $(jj).attr("data");
		$("#title").val(txt)
	})
})
//Preview an image before it is uploaded
$("[name=\"items[]\"]").change(function(){
	var fileElements = $("[name=\"items[]\"]");
     var filesCount = $(fileElements[0]).prop("files").length;
	if(filesCount>5){
		if(!$(".loadImg").next().hasClass("error"))
		    $(".loadImg").after("<p class=\"error\">Tối đa chỉ được 5 hình</p>");
	}else{
		$("#listPT").html("");
		readURL(this);
	}
});
function readURL(input) {
	if (input.files && input.files[0]) {
        var i;
        for (i = 0; i < input.files.length; ++i) {
          var reader = new FileReader();
          reader.onload = function (e) {
              $("#listPT").append("<img src=\""+e.target.result+"\">");
          }
          reader.readAsDataURL(input.files[i]);
        }
    }
}
//form submit comment
$("#form").on("submit", function(e){
	e.preventDefault();
	let star="", store="",price="", title="",message="",photo="";
	if($(".formsubmit").find(".starlist").find("li.active").length){
		star = $("#star").val()
		if($(".formsubmit").find(".starlist").next().hasClass("error")){
			$(".formsubmit").find(".starlist").next().remove();
		}
	}else if(!$(".formsubmit").find(".starlist").next().hasClass("error")){
		$(".formsubmit .starlist").after("<p class=\"error\">Vui lòng đánh giá</p>");
	}

	if($("#store select").val() !== ""){
		if($("#store").next().hasClass("error")){
			$("#store").next().remove();
		}
		store = $("#store select").val()
	}else if(!$("#store").next().hasClass("error")){
		$("#store").after("<p class=\"error\">Vui lòng chọn cửa hàng đã mua</p>");
	}

	if($("#price select").val() !== ""){
		if($("#price").next().hasClass("error")){
			$("#price").next().remove();
		}
		price = $("#price select").val()
	}else{
		if(!$("#price").next().hasClass("error"))
			$("#price").after("<p class=\"error\">Vui lòng chọn tầm giá</p>");
	}

	if($.trim($("#title").val()) !== ""){
		if($("#title").next().hasClass("error")){
			$("#title").next().remove();
		}
		title = $("#title").val();
	}else{
		if(!$("#title").next().hasClass("error"))
			$("#title").after("<p class=\"error\">Vui lòng nhập hoặc chọn tiêu đề</p>");
	}

	if($.trim($("#message").val()) !== ""){
		if($("#message").next().hasClass("error")){
			$("#message").next().remove();
		}
		message = $("#message").val()
	}else{
		if(!$("#message").next().hasClass("error"))
			$("#message").after("<p class=\"error\">Vui lòng nhập nội dung</p>");
	}

	var fileElements = $("[name=\"items[]\"]");

      var filesCount = $(fileElements[0]).prop("files").length;

      if (filesCount > 5) {
		 if(!$(".loadImg").next().hasClass("error"))
           	$(".loadImg").after("<p class=\"error\">Tối đa chỉ được 5 hình</p>");
	}else{
		if($(".loadImg").next().hasClass("error")){
			$(".loadImg").next().remove();
		}
	}

	if(star && store && price && title && message){
		$.ajax({
	        url: "'.Yii::app()->baseUrl.'/ajax/comment",
		   type: "POST",
		   data:  new FormData(this),
		   dataType: "json",
		   contentType: false,
		   cache: false,
		   processData:false,
		   beforeSend : function(){

		   },
		   success: function(data){
		    	if(data==0){

		    	}else{
				$("#popupCmt").modal("hide").on("hidden.bs.modal", function (e) {
		                $("#popupsuccess").modal("show");
		                $(this).off("hidden.bs.modal");
		            });
				//$("#popupCmt").modal("hide")
		     	$("#form")[0].reset();
				$(".starlist li").removeClass("active");
				$("#store").find(".select-selected").text("Chọn cửa hàng");
				$("#price").find(".select-selected").text("Chọn tầm giá");
				$(".listTag").removeClass("active")
		    	}
		   },
		   error: function(e){

		   }
	   	});
	}
});
//scroll to rating
$(".star span").unbind().click(function(){
	$(window).scrollTop($(".comment").offset().top, 500);
})
$(".main-menu li:nth-child(2)").addClass("active")
//pager
$("#pager li").unbind().click(function(){
	$(window).scrollTop($("#listcomment").offset().top);
})
//like comments
likeCMT();
function likeCMT(){
	$("#listcomment").find(".box-items").each(function(i, j){
		if($(this).find(".content-cmt").height() < 40){
			$(this).find(".content-cmt").next().hide();
		}
		$(j).find(".like").unbind().click(function(){
			let lk = $(this).attr("data");
			if(lk){
				$.ajax({
					url: "'.Yii::app()->baseUrl.'/ajax/likecmt",
					dataType: "json",
					type: "post",
					data: {lk:lk},
					success: function(data){
						if(data == "1"){
							$(j).find(".like").addClass("active")
						}else if(data == "2"){
							if($(j).find(".like").hasClass("active")){
								$(j).find(".like").removeClass("active")
							}else{
								$(j).find(".like").addClass("active")
							}
						}
					}
				})
			}
		})
	});
}
//view more cmt
$(".viewmore-cmt").unbind().click(function(){
	if(!$(".content-cmt").hasClass("active")){
		$(this).prev().addClass("active");
		$(this).text("Thu gọn");
	}else if($(this).text() == "Thu gọn"){
		$(this).text("Xem thêm");
		$(".content-cmt").removeClass("active")
	}
});
', CClientScript::POS_END);?>
