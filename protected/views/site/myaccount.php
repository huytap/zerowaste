<div class="wrapper myaccount">
	<div class="header">
     <?php $this->widget('MenuWidget');?>
   </div>
   <div class="bg-header">
   </div>
   <div class="container">
     <div class="row">
       <div class="col-md-8">
         <div class="row">
           <ul class="nav nav-tabs">
             <li class="active"><a id="store-tab" data-toggle="tab" href="#store-tab" role="tab" aria-controls="store-tab" aria-selected="true"><span><img src="<?php echo Yii::app()->baseUrl?>/images/010-placeholder.svg"></span>ĐỊA ĐIỂM</a></li>
             <li><a id="comment-tab" data-toggle="tab" href="#comment-tab" role="tab" aria-controls="comment-tab" aria-selected="false"><span><img src="<?php echo Yii::app()->baseUrl?>/images/007-favorite.svg"></span>NHẬN XÉT</a></li>
           </ul>
         </div>
				 <div class="tab-content" id="myTabContent">
					  <div class="tab-pane fade show active" id="store-tab" role="tabpanel" aria-labelledby="store-tab">
							<div class="row store">
		            <div class="col-xs-12">
		              <p class="stored">Bạn đã lưu <span class="usr-total-store"><?php echo ($stores) ? count($stores->getData()) : 0;?></span> địa điểm zero-waste</p>
		            </div>
		            <?php
		            $background = array(
		              array('title' => 'fd949e', 'content' => 'ffdfdf'),
		              array('title' => 'fab537', 'content' => 'fff3d6'),
		              array('title' => 'f68440', 'content' => 'ffe6d9'),
		              array('title' => '4dd0b4', 'content' => 'd9ebe7'),
		              array('title' => 'cd9fea', 'content' => 'e4d9eb'),
		              array('title' => '7dcee5', 'content' => 'd9e7eb')
		            );
		            ?>
		            <?php
		            $arr_district = Yii::app()->params['district'];
		            foreach($stores->getData() as $data){
		            	$district = StoreBrand::model()->getDistrict($data['id']);
		            if(!isset($district[0])){
		            $district = array(
		              array('address' => '', 'district' => '')
		            );

		            }
		              ?>
		              <?php $rand_keys = array_rand($background, 1);?>
		              <div class="item col-md-6 col-sm-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store']['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
		                <div data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['store']['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>" class="subitem">
		            		 <div class="row item-title active" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
		            			 <div class="col-xs-4 hidden-lg hidden-md hidden-sm"><img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['store']['logo'];?>"></div>
		            			 <div class="col-xs-8 col-sm-12 col-lg-12">
		            			   <h3><?php echo $data['store']['name'];?></h3>
		            			   <span><?php echo $district[0]['address'].', '. (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
		            			 </div>
		            		 </div>
		            		  <div class="photo" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['store']['photo'];?>) no-repeat center center;background-size: cover;">
		            		    <div class="hidden-lg hidden-md hidden-sm" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['store']['photo'];?>) no-repeat center center;background-size: cover;height:164px;border-top:2px solid #000"></div>
		            		    <div class="item-content hidden-sm" style="background:#<?php echo $background[$rand_keys]['content'];?>">
		            			 <?php
		            			 $category = explode(',', $data['store']['store_category_id']);
		            			 if(count($category)){
		            			   ?>
		            			   <ul>
		            				<?php
		            				foreach ($category as $key => $value) {
		            				  $cate = StoreCategory::model()->getById($value);
		            				  echo '<li><img src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive" width="22"> '.$cate['name'].'</li>';
		            				}?>

		            			   </ul>
		            			   <?php
		            			 }
		            			 ?>

		            			 <?php echo $data['store']['description'];?>
		            		    </div>
		            		  </div>
		            		 <span style="background:#<?php echo $background[$rand_keys]['title'];?>" href="javascript:void(0)" class="viewdetail hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="16"></span>
		            	 </div>
		              </div>
		              <?php
		            }
		            ?>

		          </div>
		        </div>
						</div>
					  <div class="tab-pane fade" id="comment-tab" role="tabpanel" aria-labelledby="comment-tab">

						</div>
					</div>

       <div class="col-md-4">
         <div class="avatar"><img src="<?php echo Yii::app()->baseUrl;?>/uploads/<?php echo $user['avatar'];?>" class="img-responsive"></div>
         <div class="userinfo text-center">
           <h3><?php echo $user['fullname'];?></h3>
           <p class="user-email"><?php echo $user['email'];?></p>
           <p class="user-date">Tham gia: <?php echo ExtraHelper::timeago($user['added_date']);?></p>
           <span class="usr-setting"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_setting.svg" width="30"></span>
           <ul class="user-list-item">
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_location_acc.svg"></span>
               <span class="usr-number">16</span>
               <span class="usr-text">ĐỊA ĐIỂM</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/007-favorite.svg"></span>
               <span class="usr-number">16</span>
               <span class="usr-text">ĐỊA ĐIỂM</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_fav_acc.svg"></span>
               <span class="usr-number">16</span>
               <span class="usr-text">ĐỊA ĐIỂM</span>
             </li>
           </ul>
           <div class="text-center"><a class="usr-logout" href="<?php echo Yii::app()->baseUrl?>/site/logout">ĐĂNG XUẤT</a></div>
         </div>
       </div>
     </div>
   </div>
 </div>
