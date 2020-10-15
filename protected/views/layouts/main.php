<?php
$this->widget('HeadWidget');?>
	<?php echo $content; ?>
<div class="footer">
  <div class="container">
	  <div class="footer-container">
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
	    <div class="footer-bottom">
		    <h2>HÃY TÌM TỤI MÌNH TẠI</h2>
		    <ul>
			    <li><a href="https://www.facebook.com/gozerowastevn/" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_fb_footer.png"></a></li>
			    <li><a href="https://www.instagram.com/gozerowastevn/" target="_blank"><img src="<?php echo Yii::app()->baseUrl?>/images/icon_instagram_footer.png"></a></li>
		    </ul>
	    </div>
	  </div>
  </div>
</div>
<?php
$this->widget('PopupWidget');?>
<?php
$this->widget('FooterWidget');?>
