<div class="wrapper myaccount">
	<div class="header">
     <?php $this->widget('MenuWidget');?>
   </div>
   <div class="bg-header">
   </div>
   <div class="container">
     <div class="row">
			 <div class="col-xs-12 col-sm-12 hidden-lg hidden-md">

         <div class="userinfo text-center">
					 <div class="avatar">
						 <img src="<?php echo Yii::app()->baseUrl;?>/timthumb.php?src=<?php echo Yii::app()->baseUrl;?>/uploads/<?php echo $user['avatar'];?>&w=250&h=250" class="img-responsive">
						 <span class="changeAvt">
							 <form method="post" enctype="multipart/form-data" class="avtProfile">
								 <input type="file" name="Users[avatar]" class="avatarA">
								 <button type="submit" style="opacity:0" class="btnSubmitAvt"></button>
							 </form>
							 <span><a href="javascript:void(0);">Đổi</a></span>
						 </span>
					 </div>
           <h3><?php echo $user['fullname'];?></h3>
           <p class="user-email"><?php echo $user['email'];?></p>
           <p class="user-date">Tham gia: <?php echo ExtraHelper::timeago($user['added_date']);?></p>
           <a class="usr-setting" href="#" data-toggle="modal" id="openForgot" data-target="#updatePopup"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_setting.svg" width="30"></a>
           <ul class="user-list-item">
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_location_acc.svg"></span>
               <span class="usr-number"><?php echo count($stores->getData());?></span>
               <span class="usr-text">ĐỊA ĐIỂM</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/007-favorite.svg"></span>
               <span class="usr-number"><?php echo Comment::model()->getTotalCommentByMember($user['id']);?></span>
               <span class="usr-text">NHẬN XÉT</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_fav_acc.svg"></span>
               <span class="usr-number"><?php echo CommentLikes::model()->getTotalLikeByMember($user['id']);?></span>
               <span class="usr-text">LỜI CẢM ƠN</span>
             </li>
           </ul>
           <div class="text-center"><a class="usr-logout" href="<?php echo Yii::app()->baseUrl?>/site/logout">ĐĂNG XUẤT</a></div>
         </div>
       </div>
       <div class="col-md-8 col-sm-12 col-xs-12">
         <div class="row">
					 <div class="col-md-12 col-sm-12 col-xs-12">
	           <ul class="nav nav-tabs">
	             <li class="active"><a data-toggle="tab" href="#store-tab" role="tab" aria-controls="store-tab" aria-selected="true"><span></span>ĐỊA ĐIỂM</a></li>
	             <li><a data-toggle="tab" href="#comment-tab" role="tab" aria-controls="comment-tab" aria-selected="false"><span></span>NHẬN XÉT</a></li>
	           </ul>
					 </div>
         </div>
				 <div class="tab-content">
					  <div class="tab-pane fade in active" id="store-tab" role="tabpanel" aria-labelledby="store-tab">
							<div class="row store">
		            <div class="col-md-12 col-sm-12 col-xs-12">
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
		            if($stores && count($stores->getData())){
			            foreach($stores->getData() as $data){
			            	$selectW= false;
					       	$checkW = UserStore::model()->getByStoreUser(Yii::app()->user->id, $data['store_id']);
				   	    	if($checkW && $checkW['status'] == 1){
					        	$selectW = true;
					       	}

			            	$district = StoreBrand::model()->getDistrict($data['store_id']);
			            if(!isset($district[0])){
			            $district = array(
			              array('address' => '', 'district' => '')
			            );

			            }
			              ?>
			              <?php $rand_keys = array_rand($background, 1);?>
			              <div class="item col-md-4 col-sm-4 col-xs-12" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['store_id'];?>" group1="<?php echo $data['store']['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
			                <div data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['store']['name'])?>-<?php echo $data['store_id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>" class="subitem">
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
			            			 <span class="wishlist <?php if($selectW == true) echo 'selected';?>" data="<?php echo $data['store_id'];?>"></span>
			            			 <?php echo $data['store']['description'];?>
			            		    </div>
			            		  </div>
			            		 <span style="background:#<?php echo $background[$rand_keys]['title'];?>" href="javascript:void(0)" class="viewdetail hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="16"></span>
			            		 <span class="wishlist desk <?php if($selectW == true) echo 'selected';?>" data="<?php echo $data['store_id'];?>"></span>
			            	 </div>
			              </div>
			              <?php
			            }
			        }
		            ?>

		          </div>
		        </div>
					  <div class="tab-pane fade" id="comment-tab" role="tabpanel" aria-labelledby="comment-tab">
							<ul class="comment-type">
								<li class="active"><a data-toggle="tab" href="#cmt-tab" role="tab" aria-controls="cmt-tab" aria-selected="true"><span><?php echo Comment::model()->getTotalCommentByMember($user['id']);?></span>Nhận xét của tôi</a></li>
								<li><a data-toggle="tab" href="#like-tab" role="tab" aria-controls="like-tab" aria-selected="true"><span><?php echo CommentLikes::model()->getTotalLikeByMember($user['id']);?></span>Nhận xét tôi thích</a></li>
							</ul>
							<div class="tab-content">
								<div id="cmt-tab" class="tab-pane fade in active">
									<?php
								    $this->widget('zii.widgets.CListView', array(
									    'id' => 'listcomment',
									    'dataProvider'=> $comments,
									    'itemView'=>'profile/_item_comment_in_account',
									    'ajaxVar' => 'id',
									    //'ajaxUrl'=>array($this->getRoute()),
									    'enablePagination'=>true,
									    'template' => '{items}{pager}',
									    'emptyText' => 'Bạn chưa có nhận xét nào',
									    'pager' => array(
										    'id' => 'pager',
										    //'listViewId' => 'listcomment',
										    //'class' => 'ext.infiniteScroll.IasPager',
										    'header' => '',
										    'nextPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination@2x.png" width="36">',
										    'prevPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination_left.png" width="36">'
									    ),
									));?>
								</div>
								<div id="like-tab" class="tab-pane fade">
								<?php
							    $this->widget('zii.widgets.CListView', array(
								    'id' => 'listcommentlikes',
								    'dataProvider'=> $comment_likes,
								    'itemView'=>'profile/_item_commentlike_in_account',
								    'ajaxVar' => 'id',
								    //'ajaxUrl'=>array($this->getRoute()),
								    'enablePagination'=>true,
								    'template' => '{items}{pager}',
								    'emptyText' => 'Bạn chưa thích bình luận nào',
								    'pager' => array(
									    'id' => 'pager',
									    //'listViewId' => 'listcomment',
									    //'class' => 'ext.infiniteScroll.IasPager',
									    'header' => '',
									    'nextPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination@2x.png" width="36">',
									    'prevPageLabel' => '<img src="'.Yii::app()->baseUrl.'/images/btn_pagination_left.png" width="36">'
								    ),
								));?>
							</div>
							</div>
						</div>
						</div>
					</div>

       <div class="col-md-4 hidden-sm hidden-xs">
         <div class="avatar">
					 <img id="imgAvt" src="<?php echo Yii::app()->baseUrl;?>/timthumb.php?src=<?php echo Yii::app()->baseUrl;?>/uploads/<?php echo $user['avatar'];?>&w=250&h=250" class="img-responsive">
					 <span class="changeAvt">
						 <form method="post" enctype="multipart/form-data" class="avtProfile">
							 <input type="file" name="Users[avatar]" class="avatarA">
							 <button type="submit" style="opacity:0" class="btnSubmitAvt"></button>
						 </form>
						 <span><a href="javascript:void(0);">Đổi</a></span>
					 </span>
				 </div>
         <div class="userinfo text-center">
           <h3><?php echo $user['fullname'];?></h3>
           <p class="user-email"><?php echo $user['email'];?></p>
           <p class="user-date">Tham gia: <?php echo ExtraHelper::timeago($user['added_date']);?></p>
           <a class="usr-setting" href="#" data-toggle="modal" id="openForgot" data-target="#updatePopup"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_setting.svg" width="30"></a>
           <ul class="user-list-item">
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_location_acc.svg"></span>
               <span class="usr-number"><?php echo count($stores->getData());?></span>
               <span class="usr-text">ĐỊA ĐIỂM</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/007-favorite.svg"></span>
               <span class="usr-number"><?php echo Comment::model()->getTotalCommentByMember($user['id']);?></span>
               <span class="usr-text">NHẬN XÉT</span>
             </li>
             <li>
               <span class="usr-img"><img src="<?php echo Yii::app()->baseUrl;?>/images/icn_fav_acc.svg"></span>
               <span class="usr-number"><?php echo CommentLikes::model()->getTotalLikeByMember($user['id']);?></span>
               <span class="usr-text">LỜI CẢM ƠN</span>
             </li>
           </ul>
           <div class="text-center"><a class="usr-logout" href="<?php echo Yii::app()->baseUrl?>/site/logout">ĐĂNG XUẤT</a></div>
         </div>
       </div>
     </div>
   </div>
	<?php $this->renderPartial('profile/update', compact(array('user')));?>
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
 <?php
    Yii::app()->clientScript->registerScript('myaccount', '
    	var storeid = 0;

		$(".store").find(".item").each(function(i, j){
		  	$(j).find(".item-title").unbind().click(function(){
				$(".store").find(".item").find(".photo").removeClass("active");
				$(".store").find(".item").find(".subitem").removeClass("active");
				//$(".store").find(".item").find(".item-title").addClass("active");
				$(this).removeClass("active");
				if(storeid == $(j).attr("data-id")){
					$(j).find(".subitem").removeClass("active");
					$(j).find(".photo").removeClass("active");
					storeid = 0;
				}else{
					storeid = $(j).attr("data-id");
					$(j).find(".subitem").addClass("active");
					$(j).find(".photo").addClass("active");
				}
			});
		});

		$(".avatarA").unbind().change(function(){
			$(".btnSubmitAvt").unbind().trigger("click")
		})
		$(".avtProfile").on("submit", function(e){
			 e.preventDefault();
	      var formData = new FormData(this);
				$.ajax({
	            url: "'.Yii::app()->baseUrl.'/ajax/changeAvt",
	          type: "POST",
	          data:  new FormData(this),
	          dataType: "json",
	          contentType: false,
	          cache: false,
	          processData:false,
	          beforeSend : function(){
	            //$("#loading").show();
	            $(".error").hide();
	          },
	          success: function(data){
				if(data.status == 1)
	            	$("#imgAvt").attr("src", data.img_url);
	          }
	        });
		});
		loadStore();
    ', CClientScript::POS_END);?>
