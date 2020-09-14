<?php require('inc/head.php');?>
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
?>
<div class="wrapper">
  <div class="header">
    <div class="header-top">
      <?php require('inc/menu.php');?>
    </div>
    <div class="banner">
      <img src="images/product_banner.png?v=01" class="img-responsive">
      <div class="banner-text">
        <h1>SƯU TẬP<br/><span>SẢN PHẨM</span></h1>
        <p>Bộ sưu tập sản phẩm zero-waste<br/>phong phú với hơn 20 sản phẩm.</p>
      </div>
    </div>
  </div>
  <div class="product-content">
    <div class="container">
      <div class="filter-box">
        <select>
          <option>Chọn loại hàng</option>
          <option>Tiêu dùng</option>
          <option>Nhà hàng/Cafe</option>
          <option>Thực phẩm</option>
          <option>Thời trang</option>
        </select>
        <div class="box-search pull-right">
          <input type="text" class="" placeholder="Search with love...">
        </div>
      </div>
      <div class="grid-container" id="photos">
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [0]['content'];?>">
          <img src="images/products/sp1.png">
          <h3 style="background:#<?php echo $background [0]['title'];?>">hộp cơm</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [0]['content'];?>">
          <img src="images/products/sp14.png">
          <h3 style="background:#<?php echo $background [0]['title'];?>">Mỹ Phẩm</h3>
        </div>
        <div class="item" style="background:#<?php echo $background [1]['content'];?>">
          <img src="images/products/sp2.png" data-filter="Tiêu dùng">
          <h3 style="background:#<?php echo $background [1]['title'];?>">Bàn chải gỗ</h3>
        </div>
        <div class="item" style="background:#<?php echo $background [2]['content'];?>">
          <img src="images/products/sp3.png" data-filter="Tiêu dùng">
          <h3 style="background:#<?php echo $background [2]['title'];?>">Bình nước</h3>
        </div>
        <div class="item" style="background:#<?php echo $background [3]['content'];?>">
          <img src="images/products/sp4.png" data-filter="Thực phẩm">
          <h3 style="background:#<?php echo $background [3]['title'];?>">Màng bọc thực phẩm</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [4]['content'];?>">
          <img src="images/products/sp5.png">
          <h3 style="background:#<?php echo $background [4]['title'];?>">Tăm bông</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [5]['content'];?>">
          <img src="images/products/sp6.png">
          <h3 style="background:#<?php echo $background [5]['title'];?>">Cốc nguyệt san</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [6]['content'];?>">
          <img src="images/products/sp7.png">
          <h3 style="background:#<?php echo $background [6]['title'];?>">Túi đi chợ</h3>
        </div>
        <div class="item" data-filter="Thời trang" style="background:#<?php echo $background [7]['content'];?>">
          <img src="images/products/sp8.png">
          <h3 style="background:#<?php echo $background [7]['title'];?>">Bông Tẩy Trang</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [2]['content'];?>">
          <img src="images/products/sp9.png">
          <h3 style="background:#<?php echo $background [2]['title'];?>">Kem Đánh Răng</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [2]['content'];?>">
          <img src="images/products/sp10.png">
          <h3 style="background:#<?php echo $background [2]['title'];?>">Ống hút</h3>
        </div>
        <div class="item" data-filter="Thời trang" style="background:#<?php echo $background [4]['content'];?>">
          <img src="images/products/sp11.png">
          <h3 style="background:#<?php echo $background [4]['title'];?>">Vải Đa Năng</h3>
        </div>
        <div class="item" data-filter="Nhà hàng/Cafe" style="background:#<?php echo $background [6]['content'];?>">
          <img src="images/products/sp12.png">
          <h3 style="background:#<?php echo $background [6]['title'];?>">Hũ Thủy Tinh</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [1]['content'];?>">
          <img src="images/products/sp13.png">
          <h3 style="background:#<?php echo $background [1]['title'];?>">Chỉ Nha Khoa</h3>
        </div>
        <div class="item" data-filter="Thời trang" style="background:#<?php echo $background [7]['content'];?>">
          <img src="images/products/sp15.png">
          <h3 style="background:#<?php echo $background [7]['title'];?>">Áo quần</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [1]['content'];?>">
          <img src="images/products/sp16.png">
          <h3 style="background:#<?php echo $background [1]['title'];?>">Dụng cụ cọ rửa</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [5]['content'];?>">
          <img src="images/products/sp17.png">
          <h3 style="background:#<?php echo $background [5]['title'];?>">Dao Cạo</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [3]['content'];?>">
          <img src="images/products/sp18.png">
          <h3 style="background:#<?php echo $background [3]['title'];?>">Lăn khử mùi</h3>
        </div>
        <div class="item" data-filter="Nhà hàng" style="background:#<?php echo $background [6]['content'];?>">
          <img src="images/products/sp19.png">
          <h3 style="background:#<?php echo $background [6]['title'];?>">Bộ thìa đũa</h3>
        </div>
        <div class="item" data-filter="Tiêu dùng" style="background:#<?php echo $background [0]['content'];?>">
          <img src="images/products/sp20.png">
          <h3 style="background:#<?php echo $background [0]['title'];?>">Xà bông</h3>
        </div>
      </div>
    </div>

    <div class="product-detail">
      <div class="arrow-up"></div>
      <div class="container">
        <div class="row detail-text">
          <div class="col-md-5"><img src="images/product_pic.png" /></div>
          <div class="col-md-7">
            <h3>Bông tẩy trang</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. </p>
            <a href="store.html" class="btncontact btn-buy">TÌM MUA</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php require('inc/footer.php');?>
</div>
<?php
//popup
require('inc/popup.php');
?>
<div id="store" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="images/btn-close.png"></span></button>
      </div>
      <div class="modal-body">
        <?php require('inc/store.php');?>
      </div>
    </div>
  </div>
</div>
<?php
//store
//require('inc/store-detail.php');
//js
require('inc/end.php');
?>
