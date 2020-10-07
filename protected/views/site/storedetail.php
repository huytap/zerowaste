<?php Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/css/swiper-bundle.min.css');?>
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
<?php
$background = array(
  array('title' => 'fd949e', 'content' => 'ffdfdf'),
  array('title' => 'fab537', 'content' => 'fff3d6'),
  array('title' => 'f68440', 'content' => 'ffe6d9'),
  array('title' => '4dd0b4', 'content' => 'd9ebe7'),
  array('title' => 'cd9fea', 'content' => 'e4d9eb'),
  array('title' => '7dcee5', 'content' => 'd9e7eb')
);
$category = explode(',', $store['store_category_id']);
?>
<div class="wrapper stores">
  <div class="header">
     <?php $this->widget('MenuWidget');?>
  </div>
        <div class="top-info" <?php if(isset($_GET['bg'])) echo 'style="background:#'.$_GET['bg'].'"';?>;>
          <div class="container">
            <div class="col-md-1 hidden-xs">
              <ul class="category">
			    <?php
			    $ct_html = '';
			    foreach($category as $ct){
				    $ic = StoreCategory::model()->findByPk($ct);
				   $ct_html .= '<li><img src="'.Yii::app()->baseUrl.'/uploads/'.$ic['icon'].'" class="img-responsive"></li>';
			    }
			    echo $ct_html;
			    ?>
              </ul>
            </div>
            <div class="col-md-4">
              <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $store['photo'];?>" class="img-responsive">
            </div>
            <div class="col-md-7">
              <ul class="social hidden-xs">
		    <?php if($store['website']){?>
			    <li><a href="<?php echo $store['website'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" /></a></li>
		    <?php }?>
		    <?php if($store['facebook']){?>
			   <li><a href="<?php echo $store['facebook'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" /></a></li>
		   <?php }?>
		      <?php if($store['instagram']){?>
	                <li><a href="<?php echo $store['instagram'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" /></a></li>
			 <?php }?>
              </ul>
              <div class="info">
                <div class="">
                  <h3><?php echo $store['name'];?></h3>
                  <p class="address"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-map.png"> <?php echo $district[0]['address'].', '.$district[0]['district'];?></p>
                  <ul class="category hidden-lg hidden-md">
                    <?php echo $ct_html;?>
                  </ul>
                  <?php echo $store['description'];?>
                  <ul class="social hidden-lg hidden-md">
				   <?php if($store['website']){?>
   	 			    <li><a href="<?php echo $store['website'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" /></a></li>
   	 		    <?php }?>
   	 		    <?php if($store['facebook']){?>
   	 			   <li><a href="<?php echo $store['facebook'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" /></a></li>
   	 		   <?php }?>
   	 		      <?php if($store['instagram']){?>
   	 	                <li><a href="<?php echo $store['instagram'];?>" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" /></a></li>
   	 			 <?php }?>
                  </ul>
                  <div class="moreinfo hidden-xs">
                    <!--span class="wishlist2"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                      </svg>
			  </span-->
				<?php
				$html_map = '';
				$linkmap = '';
		   		  if(count($district)>1){
		   			  $linkmap = '<a href="#viewmap" data-toggle="modal" class="btncontact viewmap">xem bản đồ</a>';
		   			  $html_map = '<div id="viewmap" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
		   			    <div class="modal-dialog" role="document">
		   				 <div class="modal-content">
		   				   <div class="modal-header">
		   					<button type="button" id="btn-closeStoreDetail" class="close"><span><img src="'.Yii::app()->baseUrl.'/images/btn_Close.png"></span></button>
		   				   </div>
		   				   <div class="modal-body" id="store-content-detail">
		   				   </div>
		   				 </div>
		   			    </div>
		   			  </div>';
		   		  }else{
		   			  $linkmap = '<a href="https://www.google.com/maps/place/'.urlencode($district[0]['address'].', '.$district[0]['district'].', '.$district[0]['city']).'" target="_blank" class="btncontact viewmap">xem bản đồ</a>';
		   		  }
		   		  echo $linkmap;
				 ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="gallery">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
                <div class="swiper-slide"><img src="<?php echo Yii::app()->baseUrl?>/images/gallery.png?v=01" class="img-responsive" /></div>
              </div>
            </div>
          </div>
          <div class="moreinfo hidden-lg hidden-md">
            <span class="wishlist2"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
              </svg>
            </span>
		  <?php
		  $html_map = '';
		  $linkmap = '';
		  if(count($district)>1){
			  $linkmap = '<a href="#viewmap" data-toggle="modal" class="btncontact viewmap">xem bản đồ</a>';
			  $html_map = '<div id="viewmap" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
			    <div class="modal-dialog" role="document">
				 <div class="modal-content">
				   <div class="modal-header">
					<button type="button" id="btn-closeStoreDetail" class="close"><span><img src="'.Yii::app()->baseUrl.'/images/btn_Close.png"></span></button>
				   </div>
				   <div class="modal-body" id="store-content-detail">
				   </div>
				 </div>
			    </div>
			  </div>';
		  }else{
			  $linkmap = '<a href="https://www.google.com/maps/place/'.urlencode($district[0]['address'].', '.$district[0]['district'].', '.$district[0]['city']).'" target="_blank" class="btncontact viewmap">xem bản đồ</a>';
		  }
		  echo $linkmap;
		   ?>
          </div>
        </div>
        <div class="container">
		<?php if($store_near && count($store_near->getData())){?>
	          <div class="headline">
	            <div class="row">
	              <div class="col-md-6"><h3 class="title">Cửa hàng gần đó</h3></div>
	              <div class="col-md-6 text-right"><a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=<?php echo $district['district'];?>">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
	            </div>
	          </div>
	          <div class="store row">
	            <?php
			  foreach($store_near->getData() as $data){?>
	            <?php $rand_keys = array_rand($background, 1);?>
			  <div class="item col-md-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
	              <a href="javascript:void(0);" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
	                <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
	                  <h3><?php echo $data['name'];?></h3>
	                  <span><?php //echo $data['address'];?></span>
	                </div>
	                <div class="photo">
	                  <img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>">
	                  <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
	                    <?php
	                    $category = explode(',', $data['store_category_id']);
	                    if(count($category)){
	                      ?>
	                      <ul>
	                        <?php
	                        foreach ($category as $key => $value) {
	                          $cate = StoreCategory::model()->getById($value);
	                          echo '<li><img src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive"> '.$cate['name'].'</li>';
	                        }?>

	                      </ul>
	                      <?php
	                    }
	                    ?>

	                    <?php echo $data['description'];?>
	                    <!--span class="wishlist"><svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	                          <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
	                        </svg>
				    </span-->
	                  </div>
	                </div>
	              </a>
	            </div>
	          <?php }?>
	          </div>
		<?php }?>
		<?php if($store_related && count($store_related->getData())){?>
	          <div class="headline">
	            <div class="row">
	              <div class="col-md-6"><h3 class="title">Cửa hàng Liên quan</h3></div>
	              <div class="col-md-6 text-right"><a href="<?php echo Yii::app()->baseUrl?>/store.html?related=<?php echo $store['store_category_id'];?>">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
	            </div>
	          </div>
	          <div class="store row">
				<?php
	   		  foreach($store_related->getData() as $data){?>
	               <?php $rand_keys = array_rand($background, 1);?>
	   		  	<div class="item col-md-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
	                 <a href="javascript:void(0);" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
	                   <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
	                     <h3><?php echo $data['name'];?></h3>
	                     <span><?php //echo $data['address'];?></span>
	                   </div>
	                   <div class="photo">
	                     <img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>">
	                     <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
	                       <?php
	                       $category = explode(',', $data['store_category_id']);
	                       if(count($category)){
	                         ?>
	                         <ul>
	                           <?php
	                           foreach ($category as $key => $value) {
	                             $cate = StoreCategory::model()->getById($value);
	                             echo '<li><img src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive"> '.$cate['name'].'</li>';
	                           }?>

	                         </ul>
	                         <?php
	                       }
	                       ?>

	                       <?php echo $data['description'];?>
	                       <!--span class="wishlist"><svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
	                             <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
	                           </svg>
					  </span-->
	                     </div>
	                   </div>
	                 </a>
	               </div>
	             <?php }?>
	          </div>
		<?php }?>
        </div>
        </div>
   </div>
<?php echo $html_map;?>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/swiper-bundle.min.js', CClientScript::POS_END);?>
<?php Yii::app()->clientScript->registerScript('storeSlide', '
let wi = ($(window).width() - 1140)/2;
$(".gallery").css("margin-left", wi);
  var swiper = new Swiper(".swiper-container", {
    slidesPerView: 6,
    spaceBetween: 25,
    centeredSlides: false,
    grabCursor: true,
    pagination: false
  });

', CClientScript::POS_END);
