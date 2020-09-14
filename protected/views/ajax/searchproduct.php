<?php
$background = array(
  array('title' => 'ddcde7', 'content' => 'e4d9eb'),
  array('title' => 'c0d7de', 'content' => 'cce5ec'),
  array('title' => 'f0e3c3', 'content' => 'fff3d6'),
  array('title' => 'ded6c2', 'content' => 'ebe6d9'),
  array('title' => 'c4e2db', 'content' => 'd9ebe7'),
  array('title' => 'f0e3c3', 'content' => 'fff3d6'),
  array('title' => 'f4cfcf', 'content' => 'ffdfdf'),
  array('title' => 'e4d9eb', 'content' => 'e4d9eb')
);
foreach($model->getData() as $dt){
  $rand_keys = array_rand($background, 1);?>
  <div class="item" data-id="<?php echo $dt['id'];?>" data-filter="<?php echo $dt['category'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
    <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $dt['photo'];?>">
    <h3 style="background:#<?php echo $background[$rand_keys]['title'];?>"><?php echo $dt['name'];?></h3>
  </div>
<?php }?>
