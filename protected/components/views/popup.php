<div id="popup" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn-close.png"></span></button>
      </div>
      <div class="modal-body">
        <div class="container">
          <h3>GỢI Ý</h3>
          <p class="text-center">Thêm một cửa hàng, một sản phẩm zero-waste là thêm một điểm "vui chơi"<br/>
            cho tất cả chúng ta. Nếu bạn biết một nơi thú vị như thế,<br/>
            hãy giới thiệu với tụi mình!
          </p>
          <div class="step1">
            <div class="bg-hide"></div>
            <div class="step">1/2</div>
            <div class="icon"><img src="<?php echo Yii::app()->baseUrl?>/images/form-icon-top.png"></div>
            <div class="box-form">
              <div class="form">
                <label class="left">Tên</label>
                <input class="field" type="text" placeholder="Linh Tang">
              </div>
              <div class="form">
                <label class="left">Email</label>
                <input class="field" type="text" placeholder="linhlonton@gmail.com">
              </div>
              <div class="form">
                <label class="left">Bạn là</label>
                <div class="radio">
                  <label>
                    <input type="radio" name="who" value="user">
                    Khách mua hàng
                  </label>
                  <label>
                    <input type="radio" name="who" value="bussiness">
                    Chủ doanh nghiệp
                  </label>
                </div>
              </div>
              <div class="form form-intro">
                <label class="left">Bạn muốn giới thiệu</label>
                <div class="group-intro">
                  <ul>
                    <li>
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-shop.png">
                      Cửa hàng
                    </li>
                    <li>
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-product.png">
                      Sản phẩm
                    </li>
                    <li>
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-event.png">
                      Sự kiện
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="step1 step2">
            <div class="bg-hide"></div>
            <div class="step">2/2</div>
            <div class="box-form">
              <div class="form">
                <label class="left">Ngành hàng</label>
                <select class="category">
                  <option value="">Thực phẩm</option>
                  <option value="">Thời trang</option>
                  <option value="">Làm đẹp</option>
                </select>
              </div>
              <div class="form">
                <label class="left">Tên cửa hàng</label>
                <input class="field" type="text" placeholder="Cửa hàng rau củ organic Bà Linh">
              </div>
              <div class="form">
                <label class="left">Kết nối</label>
                <ul>
                  <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins.png"></a></li>
                  <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-wb.png"></a></li>
                  <li><a href="#" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb.png"></a></li>
                </ul>
              </div>
              <div class="form">
                <label class="left">Địa chỉ</label>
                <input class="field" type="text" placeholder="386/21B Lê Văn Sỹ, Phường 14, Quận 3, TP. HCM">
              </div>
              <div class="form form-intro">
                <label class="left">Giới thiệu<br/>cửa hàng</label>
                <div class="group-intro">
                  <textarea placeholder="Cung cấp sản phẩm organic, hữu cơ có giấy chứng nhận quốc tế. Bột Hữu Cơ, Sản phẩm hữu cơ, kem đánh răng hữu cơ, hóa mỹ phẩm hữu cơ, Organic 100% An Toàn cho Sức khỏe. Thiết kế cao cấp. Tiêu chuẩn Châu Âu. Giỏ quà đa dạng."></textarea>
                </div>
              </div>
            </div>
          </div>
          <div class="goiy text-center"><a href="#"><img src="<?php echo Yii::app()->baseUrl?>/images/btn-goiy.png"></a></div>
        </div>
        <div class="popup-footer">
          <img src="<?php echo Yii::app()->baseUrl?>/images/form-footer-bg.png" class="img-responsive">
        </div>
      </div>
    </div>
  </div>
</div>