<div class="wrapper stores">
  <div class="header">
    <div class="header-top">
      <?php $this->widget('MenuWidget');?>
    </div>
  </div>
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
      <div class="filter-m hidden-lg hidden-md">Lọc kết qủa</div>
      <div class="subbox">
        <h3 class="hidden-lg hidden-md">Lọc kết qủa</h3>
        <select id="storecate">
          <option value="">Chọn ngành hàng</option>
          <?php foreach(StoreCategory::model()->getList2() as $key => $value){
            echo '<option value="'.$key.'">'.$value.'</option>';
          }?>
        </select>
        <select id="where">
          <option value="">Chọn quận</option>
          <option value="Quận 1">Quận 1</option>
          <option value="Quận 2">Quận 2</option>
          <option value="Quận 3">Quận 3</option>
        </select>
      </div>
      <span class="btn_apply hidden-sm hidden-xs"><img src="images/btn_apply.png" /></span>
      <div class="box-search pull-right hidden-xs">
        <input type="text" class="" placeholder="Search with love..." id="typeStore">
      </div>
    </div>
    <div class="row store" id="store-items">
      <?php
      foreach($model->getData() as $data){
		 $district = StoreBrand::model()->getDistrict($data['id']);
        ?>
        <?php $rand_keys = array_rand($background, 1);?>
        <div class="item col-md-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
          <a href="javascript:void(0);" data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
            <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
              <h3><?php echo $data['name'];?></h3>
              <span><?php echo $district['address'].', '.$district['district'];?></span>
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
              </div>
            </div>
          </a>
        </div>
        <?php
      }
      ?>
    </div>
        <?php if(count($model->getData())>3){?>
            <div class="text-center"><a class="btncontact" href="javascript:void(0);" id="btnLoadmore">XEM THÊM <img src="images/arrow-down2.png"></a></div>
          <?php }?>
  </div>
</div>
<div id="store-detail" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" id="btn-closeStoreDetail" class="close"><span><img src="images/btn_Close.png"></span></button>
      </div>
      <div class="modal-body" id="store-content-detail">
      </div>
    </div>
  </div>
</div>
<?php

Yii::app()->clientScript->registerScript('loadStore', '
  // Biến dùng kiểm tra nếu đang gửi ajax thì ko thực hiện gửi thêm
  var is_busy = false;
  // Biến lưu trữ trang hiện tại
  var page = 1;
  // Số record trên mỗi trang
  var record_per_page = 3;
  // Biến lưu trữ rạng thái phân trang
  var stopped = false;
  $(document).ready(function(){
      // Khi kéo scroll thì xử lý
      $("#btnLoadmore").click(function(){
          // Element append nội dung
          $element = $("#store-items");
          // ELement hiển thị chữ loadding
          $button = $(this);
          // Nếu đang gửi ajax thì ngưng
          if (is_busy == true) {
              return false;
          }
          // Tăng số trang lên 1
          page++;
          // Hiển thị loadding ...
          $button.html("LOADDING...");
          // Gửi Ajax
          $.ajax({
              type: "post",
              dataType: "html",
              url: "'.Yii::app()->baseUrl.'/store.html",
              data: {page: page},
              success: function(result){
                  var html = "";
                  // Trường hợp hết dữ liệu cho trang kết tiếp
                  if (result.length <= record_per_page){
                      is_busy = true;
                      $button.remove();
                  }else{
                      //$button.html("XEM THÊM <img src=\"images/arrow-down2.png\"");
                  }
                  $element.append(result)
              },
              complete:function(data){
                loadStore()
              }
          }).always(function(){
              // Sau khi thực hiện xong thì đổi giá trị cho button
              let btn = "XEM THÊM <img src=\"'.Yii::app()->baseUrl.'/images/arrow-down2.png\">"
              $button.html(btn);
              is_busy = false;
          });

      });
  });
function loadStore(){
  $("#store-items").find(".item").each(function(i, j){
    $(j).click(function(){
      let id = $(j).attr("data-id");
      let bg = $(j).attr("data-bg");
      $.ajax({
        url: "'.Yii::app()->baseUrl.'/ajax/store",
        data: {id: id, bg:bg},
        dataType: "html",
        type: "post",
        success: function(data){
          $("#store-content-detail").html(data)
          $("#store-detail").modal({
              show: "false"
          });
		let current_url = $(j).find("a").attr("data-href");
		history.pushState(null, null, current_url);

		$("#btn-closeStoreDetail").click(function(){
		  $("#store-detail").modal("hide");
		  history.pushState(null, null, "'.Yii::app()->baseUrl.'/store.html");
	  	});
        }
      })
    });
  })
}
loadStore();
//search
$("#typeStore").keyup(function(){
  let text_search = $(this).val();
  $.ajax({
    url:"'.Yii::app()->baseUrl.'/ajax/searchstore",
    data:{text_search: text_search},
    type: "post",
    dataType: "html",
    success: function(data){
      $("#btnLoadmore").parent().hide();
      if(data.length){
        $("#store-items").html(data);
        loadStore();
      }else
      $("#store-items").html("Không tìm thấy kết quả")
    }
  })
});

$("#storecate,#where").change(function(){
  let cate = $("#storecate").val();
  let where = $("#where").val();
  $.ajax({
    url:"'.Yii::app()->baseUrl.'/ajax/searchstore",
    data:{cate:cate, where:where},
    type: "post",
    dataType: "html",
    success: function(data){
      $("#btnLoadmore").parent().hide();
      if(data.length){
        $("#store-items").html(data);
        loadStore();
      }else
      $("#store-items").html("Không tìm thấy kết quả")
    }
  })
});
$(".filter-m").click(function(){
  $(".subbox").show();
})
', CClientScript::POS_END);
 ?>
