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
foreach($model as $data){
	$district = StoreBrand::model()->getDistrict($data['id']);
if(!isset($district[0])){
$district = array(
  array('address' => '', 'district' => '')
);

}
  ?>
  <?php $rand_keys = array_rand($background, 1);?>
  <div class="item col-md-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
    <div data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>" class="subitem">
	 <div class="row item-title active" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
		 <div class="col-xs-4 hidden-lg hidden-md"><img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>"></div>
		 <div class="col-xs-8 col-lg-12">
		   <h3><?php echo $data['name'];?></h3>
		   <span><?php echo $district[0]['address'].', '. (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
		 </div>
	 </div>
	 <div class="photo">
	   <img class="img-responsive hidden-xs" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>">
	   <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];?>">
		<?php
		$category = explode(',', $data['store_category_id']);
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

		<?php echo $data['description'];?>
	   </div>
	 </div>
	 <span style="background:#<?php echo $background[$rand_keys]['title'];?>" href="javascript:void(0)" class="viewdetail hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="16"></span>
 </div>
  </div>
  <?php
}
?>
