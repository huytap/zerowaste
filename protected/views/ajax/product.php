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
');?>
<div class="col-md-5 col-xs-12" id="ptgallery">
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
<div class="col-md-7 col-xs-12">
  <h3><?php echo $model['name'];?></h3>
  <?php echo $model['description'];?>
  <?php
  if($model['field_custom_1']){
  $cf1 = json_decode($model['field_custom_1'], true);
  $st1 = Settings::model()->getSetting('custom_field_1');
  $st1 = str_replace(array('<p>','</p>'), '', $st1);
  if(count($cf1)){?>
	  <div class="pr-des row">
		  <?php for($i=0;$i<$st1;$i++){?>
		  <div class="col-md-3 col-sm-3">
			  <h4><?php echo $cf1['title_'.$i];?></h4>
			  <p><?php echo $cf1['description_'.$i];?></p>
		  </div>
	  <?php }?>
	  </div>
	  <?php }
	}
  ?>
  <a href="<?php echo Yii::app()->baseUrl?>/products/<?php echo $model['slug'];?>.html" class="btncontact btn-viewmores btn-buy">XEM THÊM <img src="<?php echo Yii::app()->baseUrl?>/images/view-info.png" width="36"></a>
  <a href="<?php echo Yii::app()->baseUrl?>/store.html?filter=<?php echo $model['store_id'];?>" class="btncontact btn-buy">TÌM MUA</a>
</div>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/swiper-bundle.min.js', CClientScript::POS_END);?>
<?php Yii::app()->clientScript->registerScript('product', '
$(document).ready(function(){
	var swiper = new Swiper(".swiper-container", {
       slidesPerView: 1,
       centeredSlides: true,
       grabCursor: true,
	  pagination: {
        el: ".swiper-pagination",
	   clickable: true,
      },
     });
})
', CClientScript::POS_END);?>
