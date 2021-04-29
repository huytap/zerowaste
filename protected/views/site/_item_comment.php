<?php
$gallery_cmt = CommentImage::model()->getListByCMT($data['id']);
$user_id = Yii::app()->user->id?Yii::app()->user->id:1;
$likesCMT = CommentLikes::model()->checkLikeByCMT($data['id'], $user_id);
?>
<div class="box-items">
	<div class="row">
		<div class="col-md-3 col-sm-3">
			<h5><?php echo $data['user']['fullname'];?></h5>
			<img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['user']['avatar'];?>" class="img-responsive"/>
		</div>
		<div class="col-md-9 col-sm-9">
			<div class="box-top">
				<ul class="cmt-star-list">
					<?php
					$stars = $data->rating;
					for($i=0;$i<$stars;$i++){
						 echo '<li><img src="'.Yii::app()->baseUrl.'/images/icn_rate.svg" width="22"/></li>';
					}
					if($stars<5){
						for($i=5-$stars;$i>0;$i--){
							echo '<li><img src="'.Yii::app()->baseUrl.'/images/icn_rate-2.svg" width="22"/></li>';
						}
					}?>
				</ul>
				<p class="box-title-cmt"><?php echo $data['title'];?></p>
				<span>Đăng:
					<?php

					echo ExtraHelper::timeago($data["date"]);
					?>
				</span>
			</div>
			<div class="box-mid">
				<div class="row">
					<div class="col-md-6">
						<img src="<?php echo Yii::app()->baseUrl?>/images/icn_location.svg" width="20"/>
						<a href="<?php echo Yii::app()->baseUrl.'/store/'.StringHelper::makeLink($data['store']['name']).'-'.$data['store']['id']?>.html"><?php echo $data['store']['name'];?></a>
					</div>
					<div class="col-md-6 text-right">
						<img src="<?php echo Yii::app()->baseUrl?>/images/icn_money.svg" width="20"/>
						<?php echo $data['price'];?>
					</div>
				</div>
			</div>
			<div class="box-bottom">
				<div class="content-cmt">
					<?php echo $data['content'];?>
				</div>
				<a href="javascript:void(0)" class="pull-right viewmore-cmt">xem thêm</a>
				<div class="box-img">
					<div class="box-left">
						<?php if($gallery_cmt && count($gallery_cmt->getData())){?>
							<div class="gallery-cmt">
								<ul class="list-img">
									<?php foreach($gallery_cmt->getData() as $gl){
										 echo '<li><img src="'.Yii::app()->baseUrl.'/uploads/comment/'.$gl['name'].'" class="img-resposive"></li>';
									}?>
								</ul>
							</div>
						<?php }?>
					</div>
					<span class="like <?php if($likesCMT['likes']) echo 'active';?>" data="<?php echo $data['id'];?>"></span>
				</div>
			</div>

		</div>
	</div>
</div>
