<link rel="stylesheet" type="text/css" href="css/swiper-bundle.min.css"/>
<style>
.swiper-container {
     width: 100%;
     height: 100%;
   }

   .swiper-slide {
     text-align: center;
     font-size: 18px;
     background: #fff;

     /* Center slide text vertically */
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
  </style>
<div id="store-detail" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <!--button type="button" id="btn-back" class="back"><span aria-hidden="true"><img src="images/btn-back.png"></span></button-->
        <button type="button" id="btn-closeStoreDetail" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="images/btn_Close.png"></span></button>
      </div>
      <div class="modal-body">
        <div class="top-info" style="background:#fff3d6;">
          
        </div>
        <div class="container">
          <div class="headline">
            <div class="row">
              <div class="col-md-6"><h3 class="title">Cửa hàng gần đó</h3></div>
              <div class="col-md-6 text-right"><a href="#">Xem thêm <img src="images/icon-arrow-right.png"></a></div>
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
          <div class="headline">
            <div class="row">
              <div class="col-md-6"><h3 class="title">Cửa hàng Liên quan</h3></div>
              <div class="col-md-6 text-right"><a href="#">Xem thêm <img src="images/icon-arrow-right.png"></a></div>
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
        </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="js/swiper-bundle.min.js" type="text/javascript"></script>
<script>
  var swiper = new Swiper('.swiper-container', {
    slidesPerView: 6,
    spaceBetween: 30,
    centeredSlides: true,
    grabCursor: true,
    pagination: false
  });
</script>
