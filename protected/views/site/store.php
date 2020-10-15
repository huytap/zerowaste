<div class="wrapper stores">
  <div class="header">
      <?php $this->widget('MenuWidget');?>
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
  $arr_district = Yii::app()->params['district'];
  ?>
  <div class="container">
    <div class="filter-box">
      <div class="filter-m hidden-lg hidden-md">Lọc kết qủa</div>
      <div class="subbox">
        <h3 class="hidden-lg hidden-md">Lọc kết qủa</h3>
	   <div class="custom-select" style="width:190px">
	        <select id="storecate">
	          <option value="">Ngành hàng ...</option>
			<option value="">Tất cả</option>
	          <?php foreach(StoreCategory::model()->getList2() as $key => $value){
	            echo '<option value="'.$key.'">'.$value.'</option>';
	          }?>
	        </select>
	   </div>
	   <div class="custom-select" style="width:180px">
	        <select id="where">
	          <option value="">Chọn quận</option>
			<option value="">Tất cả</option>
	          <?php foreach($arr_district as $key => $value){
              echo '<option value="'.$key.'">'.$value.'</option>';
            }
            ?>
	        </select>
	   </div>
      </div>
      <!--span class="btn_apply hidden-sm hidden-xs"><img src="images/btn_apply.png" /></span-->
      <div class="box-search pull-right hidden-xs">
        <input type="text" class="" placeholder="Search with love..." id="typeStore">
      </div>
    </div>
    <div class="row store" id="store-items">
      <?php
      foreach($model->getData() as $data){
		 $district = StoreBrand::model()->getDistrict($data['id']);
     if(!isset($district[0])){
      $district = array(
        array('address' => '', 'district' => '')
      );
     }
        ?>
        <?php $rand_keys = array_rand($background, 1);?>
        <div class="item col-md-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
          <a href="javascript:void(0);" data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
            <div class="item-title" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
              <h3><?php echo $data['name'];?></h3>
              <span><?php echo $district[0]['address'].', '. (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
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
        <button type="button" id="btn-closeStoreDetail" class="close"><span><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
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
  $(".store").find(".item").each(function(i, j){
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
		loadStore();
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

function changeData(){
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
}
$(".filter-m").click(function(){
  $(".subbox").show();
});

var x, i, j, l, ll, selElmnt, a, b, c;
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
	   s.onchange = changeData()
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
document.addEventListener("click", closeAllSelect);
', CClientScript::POS_END);
 ?>
