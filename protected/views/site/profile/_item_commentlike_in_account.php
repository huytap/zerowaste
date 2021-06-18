<?php
$gallery_cmt = CommentImage::model()->getListByCMT($data['comment']['id']);
?>
<div class="box-items">
	<div class="row">
		<div class="col-md-3 col-sm-3">
			<img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['comment']['category']['photo'];?>" class="img-responsive"/>
		</div>
		<div class="col-md-9 col-sm-9">
      <div class="box-custom">
        <h3><?php echo $data['comment']['category']['name'];?></h3>
      </div>
			<div class="box-top">
				<ul class="cmt-star-list">
					<?php
					$stars = $data['comment']->rating;
					for($i=0;$i<$stars;$i++){
						 echo '<li><img src="'.Yii::app()->baseUrl.'/images/icn_rate.svg" width="22"/></li>';
					}
					if($stars<5){
						for($i=5-$stars;$i>0;$i--){
							echo '<li><img src="'.Yii::app()->baseUrl.'/images/icn_rate-2.svg" width="22"/></li>';
						}
					}?>
				</ul>
				<span>Đăng:
					<?php

					echo ExtraHelper::timeago($data['comment']["date"]);
					?>
				</span>
			</div>
			<div class="box-bottom">
				<div class="content-cmt">
					<?php echo $data['comment']['content'];?>
				</div>
				<a href="<?php echo Yii::app()->baseUrl?>/products/<?php echo $data['comment']['category']['slug']?>.html#box-items<?php echo $data['comment']['id'];?>" class="pull-right viewmore-cmt">xem thêm</a>
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
				</div>
			</div>

		</div>
	</div>
</div>
