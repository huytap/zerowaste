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
  foreach($model->getData() as $data){
    $rand_keys = array_rand($background, 1);?>
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
    <?php
  }
  ?>
