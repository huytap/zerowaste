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
?>
        <div class="top-info" style="background:#fff3d6;">
          <div class="container">
            <div class="col-md-1 hidden-xs">
              <ul class="category">
                <li><img src="<?php echo Yii::app()->baseUrl?>/images/fashion.png" class="img-responsive"></li>
                <li><img src="<?php echo Yii::app()->baseUrl?>/images/beauty.png" class="img-responsive"></li>
              </ul>
            </div>
            <div class="col-md-4">
              <img src="<?php echo Yii::app()->baseUrl?>/images/storedetail.png" class="img-responsive">
            </div>
            <div class="col-md-7">
              <ul class="social hidden-xs">
                <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" /></a></li>
                <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" /></a></li>
                <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" /></a></li>
              </ul>
              <div class="info">
                <div class="">
                  <h3>nora linen</h3>
                  <p class="address"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-map.png"> 318 Phan Đăng Lưu, P. 1, Q. Tân Bình</p>
                  <ul class="category hidden-lg hidden-md">
                    <li><img src="<?php echo Yii::app()->baseUrl?>/images/fashion.png" class="img-responsive"></li>
                    <li><img src="<?php echo Yii::app()->baseUrl?>/images/beauty.png" class="img-responsive"></li>
                  </ul>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                  <ul class="social hidden-lg hidden-md">
                    <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-instagram.png" /></a></li>
                    <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-website.png" /></a></li>
                    <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-facebook.png" /></a></li>
                  </ul>
                  <div class="moreinfo hidden-xs">
                    <span class="wishlist2"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-heart-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/>
                      </svg>
                    </span>
                    <a href="https://www.google.com/maps/place/318+Phan+%C4%90%C4%83ng+L%C6%B0u,+Ph%C6%B0%E1%BB%9Dng+1,+Ph%C3%BA+Nhu%E1%BA%ADn,+H%E1%BB%93+Ch%C3%AD+Minh/@10.7992818,106.6782823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d715c116ef:0x27b41b9cd9e95d1b!8m2!3d10.7992818!4d106.680471" target="_blank" class="btncontact viewmap">xem bản đồ</a>
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
            <a href="https://www.google.com/maps/place/318+Phan+%C4%90%C4%83ng+L%C6%B0u,+Ph%C6%B0%E1%BB%9Dng+1,+Ph%C3%BA+Nhu%E1%BA%ADn,+H%E1%BB%93+Ch%C3%AD+Minh/@10.7992818,106.6782823,17z/data=!3m1!4b1!4m5!3m4!1s0x317528d715c116ef:0x27b41b9cd9e95d1b!8m2!3d10.7992818!4d106.680471" target="_blank" class="btncontact viewmap">xem bản đồ</a>
          </div>
        </div>
        <div class="container">
          <div class="headline">
            <div class="row">
              <div class="col-md-6"><h3 class="title">Cửa hàng gần đó</h3></div>
              <div class="col-md-6 text-right"><a href="#">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
            </div>
          </div>
          <div class="store row">
            <?php
            for($i=0;$i<3;$i++){?>
            <?php $rand_keys = array_rand($background, 1);?>
            <div class="item col-md-4" group1="Thực phẩm" group2="Ăn uống" group3="Quận 1">
              <a href="javascript:void(0);" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
                <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
                  <h3>LaiDay Refill Station</h3>
                  <span>216 Nguyễn Văn Đậu, P. 1, Q. Tân Bình</span>
                </div>
                <div class="photo">
                  <img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/images/store-img.png">
                  <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
                    <ul>
                      <li><img src="<?php echo Yii::app()->baseUrl?>/images/icon-fashion.png" class="img-responsive"> quần áo</li>
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
          <div class="headline">
            <div class="row">
              <div class="col-md-6"><h3 class="title">Cửa hàng Liên quan</h3></div>
              <div class="col-md-6 text-right"><a href="#">Xem thêm <img src="<?php echo Yii::app()->baseUrl?>/images/icon-arrow-right.png"></a></div>
            </div>
          </div>
          <div class="store row">
            <?php
            for($i=0;$i<3;$i++){?>
            <?php $rand_keys = array_rand($background, 1);?>
            <div class="item col-md-4" group1="Thực phẩm" group2="Ăn uống" group3="Quận 1">
              <a href="javascript:void(0);" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
                <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
                  <h3>LaiDay Refill Station</h3>
                  <span>216 Nguyễn Văn Đậu, P. 1, Q. Tân Bình</span>
                </div>
                <div class="photo">
                  <img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/images/store-img.png">
                  <div class="item-content" style="background:#<?php echo $background[$rand_keys]['content'];shuffle($background);?>">
                    <ul>
                      <li><img src="<?php echo Yii::app()->baseUrl?>/images/icon-fashion.png" class="img-responsive"> quần áo</li>
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
        </div>
        </div>
<?php Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/swiper-bundle.min.js', CClientScript::POS_END);?>

<?php Yii::app()->clientScript->registerScript('storeSlide', '
  var swiper = new Swiper(".swiper-container", {
    slidesPerView: 6,
    spaceBetween: 30,
    centeredSlides: true,
    grabCursor: true,
    pagination: false
  });

', CClientScript::POS_END);
