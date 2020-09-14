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
<div class="container">
  <div class="filter-box">
    <!--div class="dropdown">
      <div class="box-category">
        <div class="box-title">
          <span>Tiêu dùng</span>
          <a href="javascript:void(0)" class="arrow"><img src="images/icon-arrow.png"></a>
        </div>
        <ul>
          <li>Tiêu dùng</li>
          <li>Nhà hàng/Cafe</li>
          <li>Thực phẩm</li>
          <li>Thời trang</li>
        </ul>
      </div>
      <div class="box-category">
        <div class="box-title">
          <span>Mua sắm</span>
          <a href="javascript:void(0)" class="arrow"><img src="images/icon-arrow.png"></a>
        </div>
        <ul>
          <li>Mua sắm</li>
          <li>Ăn uống</li>
        </ul>
      </div>
      <div class="box-category">
        <div class="box-title">
          <span>Quận 1</span>
          <a href="javascript:void(0)" class="arrow"><img src="images/icon-arrow.png"></a>
        </div>
        <ul>
          <li>Quận 1</li>
          <li>Quận 2</li>
          <li>Quận 3</li>
        </ul>
      </div>
    </div>
    <a href="javascript:void(0)" class="btn-search" id="btn-search"><img src="images/btn-search.png"></a-->
    <select>
      <option>Chọn loại hàng</option>
      <option>Tiêu dùng</option>
      <option>Nhà hàng/Cafe</option>
      <option>Thực phẩm</option>
      <option>Thời trang</option>
    </select>
    <select>
      <option>Chọn quận</option>
      <option>Quận 1</option>
      <option>Quận 2</option>
      <option>Quận 3</option>
    </select>
    <span class="btn_apply"><img src="images/btn_apply.png" /></span>
    <div class="box-search pull-right">
      <input type="text" class="" placeholder="Search with love...">
    </div>
  </div>
  <div class="store row" id="store-items">
    <?php
    for($i=0;$i<6;$i++){?>
    <?php $rand_keys = array_rand($background, 1);?>
    <div class="item col-md-4" group1="Thực phẩm" group2="Ăn uống" group3="Quận 1">
      <a href="javascript:void(0);" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
        <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
          <h3>LaiDay Refill Station</h3>
          <span>216 Nguyễn Văn Đậu, P. 1, Q. Tân Bình</span>
        </div>
        <div class="photo">
          <img class="img-responsive" src="images/store-img.png">
          <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
            <ul>
              <li><img src="images/icon-fashion.png" class="img-responsive"> quần áo</li>
            </ul>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
            <span class="wishlist"><svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                </svg>
              </span>
          </div>
        </div>
      </a>
    </div>
  <?php }?>
  </div>
  <div class="text-center"><a class="btncontact" href="#" id="btnLoadmore">XEM THÊM <img src="images/arrow-down2.png"></a></div>
</div>
<script tyle="text/javascript">
$('#store-items').find('.item').each(function(i, j){
  let bg = $(j).find('a').attr('data-bg');
  $(j).click(function(){
    $('#store-detail').modal({
        show: 'false'
    });

  })
})
</script>
<?php require('inc/footer.php');?>
