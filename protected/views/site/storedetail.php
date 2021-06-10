<?php Yii::app()->clientScript->registerCss('cssStore', '
   .swiper-container {
      width: 100%;
      height: 100%;
    }
    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
   ');?>
   <?php Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/css/lightgallery.min.css');?>
<?php
   $background = array(
     array('title' => 'fd949e', 'content' => 'ffdfdf'),
     array('title' => 'fab537', 'content' => 'fff3d6'),
     array('title' => 'f68440', 'content' => 'ffe6d9'),
     array('title' => '4dd0b4', 'content' => 'd9ebe7'),
     array('title' => 'cd9fea', 'content' => 'e4d9eb'),
     array('title' => '7dcee5', 'content' => 'd9e7eb')
   );
   $arr_district = Yii::app()->params['district'];
   $category = explode(',', $store['store_category_id']);
   ?>
<div class="wrapper stores" id="storedetail">
<div class="header">
   <?php $this->widget('MenuWidget');?>
</div>
<div class="top-info" style="background:#<?php echo $_GET['bg'];?>;">
   <div class="container">
	   <div class="row">
		   <div class="col-xs-12 hidden-lg hidden-md hidden-sm">
			   <ul class="category-m">
    	            <?php
    	               $ct_html = '';
    	               foreach($category as $ct){
    	                $ic = StoreCategory::model()->findByPk($ct);
    	               $ct_html .= '<li><img title="'.$ic['name'].'" src="'.Yii::app()->baseUrl.'/uploads/'.$ic['icon'].'" class="img-responsive" width="60"></li>';
    	               }
    	               echo $ct_html;
    	               ?>
			</ul>
			<div class="info">
				<h3><?php echo $store['name'];?></h3>
				<p class="address"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-map.png" class="hidden-xs"> <?php echo $district[0]['address'].', P. '. str_replace('P.','', $district[0]['ward']).', '.(isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'').', '.$district[0]['city'];?></p>
			</div>
		</div>
	      <div class="col-md-5 col-sm-6">
	         <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $store['photo'];?>" class="img-responsive">
	      </div>
	      <div class="col-md-7 col-sm-6">
	         <ul class="row category hidden-xs">
	            <?php
	               $ct_html = '';
	               foreach($category as $ct){
	                $ic = StoreCategory::model()->findByPk($ct);
	               $ct_html .= '<li><img title="'.$ic['name'].'" src="'.Yii::app()->baseUrl.'/uploads/'.$ic['icon'].'" class="img-responsive" width="60"></li>';
	               }
	               echo $ct_html;
	               ?>
				<?php
   				$html_map = '';
   				$linkmap = '';
   				if(count($district)>1){
   					 $linkmap = '<a href="#viewmap" data-toggle="modal" class="btncontact viewmap">xem bản đồ</a>';
   					 $html_map = '<div id="viewmap" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   					<div class="modal-dialog" role="document">
   					 <div class="modal-content">
   					<div class="modal-header">
   					 <button type="button" class="btnCloseMap close" data-dismiss="modal" aria-label="Close"><span><img src="'.Yii::app()->baseUrl.'/images/btn_Close.png"></span></button>
   					</div>
   					<div class="modal-body" id="store-content-detail">';
   					foreach($district as $dt){
   					$html_map .= '<div class="map-row">';
   					$html_map .= '<p class="address"><img src="'.Yii::app()->baseUrl.'/images/icon-map-popup.png"> '.$dt['address'].', '.(isset($arr_district[$dt['district']])?$arr_district[$dt['district']]:'').'</p>';
   					if($dt['phone'])
   						$html_map .= '<p class="phone"><img src="'.Yii::app()->baseUrl.'/images/icon-phone-popup.png"> '.$dt['phone'].'</p>';
   						$html_map .=' <a href="https://www.google.com/maps/place/'.urlencode($dt['address'].', Phường '. str_replace('P.','', $dt['ward']).', '.(isset($arr_district[$dt['district']])?str_replace("Q.","Quận ", $arr_district[$dt['district']]):'').', '.$dt['city']).'" target="_blank" class="btncontact viewmap">xem bản đồ</a>';
   						$html_map .= '</div>';
   					}
   					$html_map .= '
   					</div>
   					 </div>
   					</div>
   					 </div>';
   				}else{
   				 	$linkmap = '<a href="https://www.google.com/maps/place/'.urlencode($district[0]['address'].', Phường '. str_replace('P.','', $district[0]['ward']).', '.(isset($arr_district[$district[0]['district']])?(', '.str_replace("Q.","Quận ", $arr_district[$district[0]['district']])):'').', '.$district[0]['city']).'" target="_blank" class="btncontact viewmap">xem bản đồ</a>';
   				}
   				echo '<li>'.$linkmap.'</li>';
   				?>
          <li class="wishlist active"><img src="<?php echo Yii::app()->baseUrl?>/images/icn_fav.svg"/></li>
	         </ul>
	         <div class="info">
	            <div class="">
	               <h3 class="hidden-xs"><?php echo $store['name'];?></h3>
	               <p class="address hidden-xs"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-map.png" class="hidden-xs"> <?php echo $district[0]['address'].', P. '. str_replace('P.','', $district[0]['ward']).', '.(isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'').', '.$district[0]['city'];?></p>
				<ul class="social hidden-xs hidden-sm">
	 	            <?php if($store['website']){?>
	 	            <li><a href="<?php echo $store['website'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	            <?php if($store['facebook']){?>
	 	            <li><a href="<?php echo $store['facebook'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	            <?php if($store['instagram']){?>
	 	            <li><a href="<?php echo $store['instagram'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	            <?php if($store['youtube']){?>
	 	            <li><a href="<?php echo $store['youtube'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_youtube.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	            <?php if($store['shopee']){?>
	 	            <li><a href="<?php echo $store['shopee'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_shopee.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	            <?php if($store['lazada']){?>
	 	            <li><a href="<?php echo $store['lazada'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_lazada.png" class="img-responsive"/></a></li>
	 	            <?php }?>
	 	         </ul>
	               <?php echo $store['description'];?>
				<ul class="category hidden-lg hidden-md hidden-xs">
	                  <?php echo $ct_html;?>
	               </ul>
	               <ul class="social hidden-lg hidden-md hidden-sm">
	                  <?php if($store['website']){?>
	                  <li><a href="<?php echo $store['website'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" class="img-responsive"/></a></li>
	                  <?php }?>
	                  <?php if($store['facebook']){?>
	                  <li><a href="<?php echo $store['facebook'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" class="img-responsive"/></a></li>
	                  <?php }?>
	                  <?php if($store['instagram']){?>
	                  <li><a href="<?php echo $store['instagram'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" class="img-responsive"/></a></li>
	                  <?php }?>
	                  <?php if($store['youtube']){?>
	                  <li><a href="<?php echo $store['youtube'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_youtube.png" class="img-responsive"/></a></li>
	                  <?php }?>
	                  <?php if($store['shopee']){?>
	                  <li><a href="<?php echo $store['shopee'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_shopee.png" class="img-responsive"/></a></li>
	                  <?php }?>
	                  <?php if($store['lazada']){?>
	                  <li><a href="<?php echo $store['lazada'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_lazada.png" class="img-responsive"/></a></li>
	                  <?php }?>
	               </ul>
	            </div>
	         </div>
	      </div>
	 </div>
   </div>
   <div class="gallery">
      <div class="swiper-container" id="gallery">
         <div class="swiper-wrapper lightgallery">
            <?php
               if($gallery)
               foreach($gallery->getData() as $gl){
                echo '<div class="swiper-slide" data-src="'.Yii::app()->baseUrl.'/uploads/gallery/'.$gl['name'].'"><img src="'.Yii::app()->baseUrl.'/uploads/gallery/'.$gl['name'].'" class="img-responsive" /></div>';
               }?>
         </div>
      </div>
   </div>
   <div class="moreinfo hidden-lg hidden-md">
      <?php
         echo $linkmap;
          ?>
		<ul class="social hidden-lg hidden-md hidden-xs">
		   <?php if($store['website']){?>
		   <li><a href="<?php echo $store['website'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		   <?php if($store['facebook']){?>
		   <li><a href="<?php echo $store['facebook'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		   <?php if($store['instagram']){?>
		   <li><a href="<?php echo $store['instagram'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		   <?php if($store['youtube']){?>
		   <li><a href="<?php echo $store['youtube'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_youtube-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		   <?php if($store['shopee']){?>
		   <li><a href="<?php echo $store['shopee'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_shopee-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		   <?php if($store['lazada']){?>
		   <li><a href="<?php echo $store['lazada'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_lazada-ipad.png" class="img-responsive"/></a></li>
		   <?php }?>
		</ul>
   </div>
</div>
<div class="container">
   <?php if($store_near && count($store_near->getData())){?>
   <div class="headline">
      <div class="row">
         <div class="col-md-6 col-sm-6">
            <h3 class="title">Cửa hàng gần đó
            <a class="viewmore-store hidden-lg hidden-md hidden-sm" href="<?php echo Yii::app()->baseUrl?>/store.html?related=<?php echo (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?>"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="20"></a>
          </h3>
         </div>
         <div class="col-md-6 col-sm-6 text-right hidden-xs"><a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=<?php echo (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?>">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
      </div>
   </div>
   <div class="store row">
      <div class="swiper-container" id="nearstore">
         <div class="swiper-wrapper">
            <?php
               foreach($store_near->getData() as $data){
                $district = StoreBrand::model()->getDistrict($data['id']);?>
            <?php $rand_keys = array_rand($background, 1);?>
            <div class="swiper-slide item col-md-4 col-sm-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
               <div class="subitem" data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
                  <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
                     <h3><?php echo $data['name'];?></h3>
                     <span><?php echo $district[0]['address'].', '.(isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
                  </div>
                  <div class="photo" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>) no-repeat center center;background-size: cover;">
                     <!--img class="img-responsive" src="<?php //echo Yii::app()->baseUrl?>/uploads/<?php //echo $data['photo'];?>"-->
                     <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
                        <?php
                           $category = explode(',', $data['store_category_id']);
                           if(count($category)){
                             ?>
                        <ul>
                           <?php
                              foreach ($category as $key => $value) {
                                $cate = StoreCategory::model()->getById($value);
                                echo '<li><img width="22" src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive"> '.$cate['name'].'</li>';
                              }?>
                        </ul>
                        <?php
                           }
                           ?>
                        <?php echo $data['description'];?>
                     </div>
                  </div>
               </div>
            </div>
            <?php }?>
         </div>
         <div class="swiper-pagination"></div>
      </div>
   </div>
   <?php }?>
   <?php if($store_related && count($store_related->getData())){?>
   <div class="headline">
      <div class="row">
         <div class="col-md-6 col-sm-6">
            <h3 class="title">Cửa hàng Liên quan
            <a class="viewmore-store hidden-lg hidden-md hidden-sm" href="<?php echo Yii::app()->baseUrl?>/store.html?related=<?php echo $store['store_category_id'];?>"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="20"></a>
          </h3>
         </div>
         <div class="col-md-6 col-sm-6 text-right hidden-xs"><a href="<?php echo Yii::app()->baseUrl?>/store.html?related=<?php echo $store['store_category_id'];?>">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
      </div>
   </div>
   <div class="store row">
      <div class="swiper-container" id="relatedstore">
         <div class="swiper-wrapper">
            <?php
               foreach($store_related->getData() as $data){
                $district = StoreBrand::model()->getDistrict($data['id']);?>
            <?php $rand_keys = array_rand($background, 1);?>
            <div class="swiper-slide item col-md-4 col-sm-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
               <div class="subitem" data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
                  <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
                     <h3><?php echo $data['name'];?></h3>
                     <span><?php echo $district[0]['address'].', '.(isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
                  </div>
                  <div class="photo" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>) no-repeat center center;background-size: cover;">
                     <!--img class="img-responsive" src="<?php //echo Yii::app()->baseUrl?>/uploads/<?php //echo $data['photo'];?>"-->
                     <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
                        <?php
                           $category = explode(',', $data['store_category_id']);
                           if(count($category)){
                             ?>
                        <ul>
                           <?php
                              foreach ($category as $key => $value) {
                                $cate = StoreCategory::model()->getById($value);
                                echo '<li><img width="22" src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive"> '.$cate['name'].'</li>';
                              }?>
                        </ul>
                        <?php
                           }
                           ?>
                        <?php echo $data['description'];?>
                     </div>
                  </div>
               </div>
            </div>
            <?php }?>
         </div>
         <div class="swiper-pagination"></div>
      </div>
   </div>
   <?php }?>
</div>
<div id="store-detail" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" id="btn-closeStoreDetail" class="close"><span><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
         </div>
         <div class="modal-body" id="store-content-detail">
         </div>
      </div>
   </div>
</div>
<?php echo $html_map;?>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/swiper-bundle.min.js', CClientScript::POS_END);?>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/lightgallery.min.js', CClientScript::POS_END);?>
<?php Yii::app()->clientScript->registerScript('storeSlide', '
$(document).ready(function(){
            $(".lightgallery").lightGallery();
        });
function loadStore(){
	$(".store").find(".item").each(function(i, j){
		$(j).click(function(){
			let id = $(j).attr("data-id");
			let bg = $(j).attr("data-bg");
			$.ajax({
				url: "'.Yii::app()->baseUrl.'/ajax/store",
				data: {id: id, bg:bg},
				dataType: "html",
				type: "post",
				success: function(data){
					$("#store-content-detail").html(data)
					$("#store-detail").modal({
						show: "false"
					});
					let current_url = $(j).find(".subitem").attr("data-href");
					history.pushState(null, null, current_url);
					$("#btn-closeStoreDetail").click(function(){
						$("#store-detail").modal("hide");
						history.pushState(null, null, "'.Yii::app()->baseUrl.'/store.html");
					});
					loadStore();
					$("#store-detail").animate({
						scrollTop: 0
					}, 1000);
				}
			});
		});
	})
}
loadStore();
if($(window).width()<=575){
	setTimeout(function(){
		var swiper = new Swiper("#relatedstore,#nearstore", {
			speed: 400,
			spaceBetween: 30,
			pagination: {
				el: ".swiper-pagination",
				type: "bullets",
				clickable: true
			},
		});
	}, 200);
}else if($(window).width()>=1024){
	if($(window).width()>=1200){
		let wi = ($(window).width() - 1140)/2;
		$(".gallery").css("margin-left", wi);
	}
		var swiper = new Swiper("#gallery", {
		slidesPerView: 6,
		spaceBetween: 25,
		centeredSlides: false,
		grabCursor: true,
		pagination: false
	});
}
', CClientScript::POS_END);
