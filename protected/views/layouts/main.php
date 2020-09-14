<?php
$this->widget('HeadWidget');?>
	<?php echo $content; ?>
<div class="footer">
  <div class="container">
    <div class="footer-top">
      Tham gia cùng
    </div>
    <div class="footer-bottom">
      Zero-Waste Wonderland
    </div>
    <p>Mỗi một cửa hàng, sản phẩm zero-waste đều là<br/>một đóng góp có ý nghĩa cho Zero Waste Wonderland.</p>
    <p>Đừng ngại giới thiệu cửa hàng và sản phẩm zero-waste với tụi mình nhé!</p>
    <a href="#popup" data-toggle="modal" class="btncontact">
      Có Chỗ này hay lắm!
    </a>
  </div>
</div>
<?php
$this->widget('PopupWidget');?>
<?php
$this->widget('FooterWidget');?>
