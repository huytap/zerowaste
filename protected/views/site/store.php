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
      <div class="filter-m hidden-lg hidden-md">
		 <img src="<?php echo Yii::app()->baseUrl?>/images/filterbutton.png" width="22" />
	 </div>
	 <div class="filter-search-m hidden-lg hidden-md pull-right hidden-lg hidden-md">
		 <img id="inputsearch" src="<?php echo Yii::app()->baseUrl?>/images/btn_search.png" width="28" />
	 </div>
      <div class="box-search pull-right">
        <input type="text" class="" placeholder="Search with love..." id="typeStore">
      </div>
	 <ul class="hidden-lg hidden-md hidden-lg hidden-md" id="filteroption">
	 </ul>
      <div class="subbox">
        <h3 class="hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/filterbutton.png" width="22" /> Lọc kết qủa</h3>
	   <a href="javascript:void(0);" class="btnclose-m hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/btnclose-m.png" width="30" /></a>
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
			<option value="">Tất cả</option>
	          <?php 
            foreach($arr_district as $key => $value){
              $selected=  '';
              if(isset($_GET['tag']) && $_GET['tag'] == $key){
                $selected = 'selected="selected"';
              }
              echo '<option value="'.$key.'" '.$selected.'>'.$value.'</option>';
            }
            ?>
	        </select>
	   </div>
	   <div class="apply text-center hidden-lg hidden-md">
		   <a href="javascript:void(0);" class="btncontact" id="btnapply">Áp dụng</a>
	   </div>
      </div>
      <!--span class="btn_apply hidden-sm hidden-xs"><img src="images/btn_apply.png" /></span-->
    </div>
    <div class="row store" id="store-items">
      <?php
      foreach($model->getData() as $data){
		 $district = StoreBrand::model()->getDistrict($data['id']);
     $selectW= false;
     if(Yii::app()->user->id>0){
       $checkW = UserStore::model()->getByStoreUser(Yii::app()->user->id, $data['id']);
       if($checkW && $checkW['status'] == 1){
         $selectW = true;
       }
     }
     if(!isset($district[0])){
      $district = array(
        array('address' => '', 'district' => '')
      );
     }
        ?>
        <?php $rand_keys = array_rand($background, 1);?>
        <div class="item col-md-4 col-sm-4" data-bg="#<?php echo $background[$rand_keys]['content'];?>" data-id="<?php echo $data['id'];?>" group1="<?php echo $data['store_category_id'];?>" group2="Ăn uống" group3="Quận 1">
          <div data-href="<?php echo Yii::app()->baseUrl?>/store/<?php echo StringHelper::makeLink($data['name'])?>-<?php echo $data['id']?>.html?bg=<?php echo $background[$rand_keys]['content'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>" class="subitem">
      		  <div class="row item-title active" style="background:#<?php echo $background[$rand_keys]['title'];?>;">
  	           <div class="col-xs-4 hidden-lg hidden-md hidden-sm"><img class="img-responsive" src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['logo'];?>"></div>
      			   <div class="col-xs-8 col-sm-12 col-lg-12">
  	              <h3><?php echo $data['name'];?></h3>
  	              <span><?php echo $district[0]['address'].', '. (isset($arr_district[$district[0]['district']])?$arr_district[$district[0]['district']]:'');?></span>
  	            </div>
      		  </div>
                  <div class="photo" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>) no-repeat center center;background-size: cover;">
                  <div class="hidden-lg hidden-md hidden-sm" style="background:url(<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $data['photo'];?>) no-repeat center center;background-size: cover;height:164px;border-top:2px solid #000"></div>
                  <!--img class="img-responsive hidden-lg hidden-md hidden-sm" src="<?php //echo Yii::app()->baseUrl?>/uploads/<?php //echo $data['photo'];?>"-->
                    <div class="item-content hidden-sm" style="background:#<?php echo $background[$rand_keys]['content'];?>">
                      <?php
                      $category = explode(',', $data['store_category_id']);
                      if(count($category)){
                        ?>
                        <ul>
                          <?php
                          foreach ($category as $key => $value) {
                            $cate = StoreCategory::model()->getById($value);
                            echo '<li><img src="'. Yii::app()->baseUrl.'/uploads/'. $cate['icon'].'" class="img-responsive" width="22"> '.$cate['name'].'</li>';
                          }?>

                        </ul>
                        <?php
                      }
                      ?>
                      <span class="wishlist <?php if($selectW == true) echo 'selected';?>" data="<?php echo $data['id'];?>"></span>
                      <?php echo $data['description'];?>
                    </div>
                  </div>

      		  <span style="background:#<?php echo $background[$rand_keys]['title'];?>" href="javascript:void(0)" class="viewdetail hidden-lg hidden-md"><img src="<?php echo Yii::app()->baseUrl?>/images/viewdetail-store.png" width="16"></span>
            <span class="wishlist desk <?php if($selectW == true) echo 'selected';?>" data="<?php echo $data['id'];?>"></span>
          </div>
        </div>
        <?php
      }
      ?>
    </div>
        <?php if(count($model->getData())>=12){?>
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
      $("#btnLoadmore").unbind().click(function(){
          // Element append nội dung
          $element = $("#store-items");
          // ELement hiển thị chữ loading
          $button = $(this);
          // Nếu đang gửi ajax thì ngưng
          if (is_busy == true) {
              return false;
          }
          // Tăng số trang lên 1
          page++;
          // Hiển thị loadding ...
          $button.html("LOADING...");
          // Gửi Ajax
          $.ajax({
              type: "post",
              dataType: "html",
              //url: "'.Yii::app()->baseUrl.'/store.html",
		    url: window.location.href,
              data: {page: page, cate:$("#storecate").val(), tag:$("#where").val()},
              success: function(result){
                  var html = "";
                  // Trường hợp hết dữ liệu cho trang kết tiếp
                  if (result.length <= record_per_page){
                      is_busy = true;
                      $button.remove();
                  }else{
                      //$button.html("XEM THÊM <img src=\"images/arrow-down2.png\"");
                  }
                  $element.append(result);
			   /*$("html, body").animate({
				   scrollTop: $("#store-items").offset().top + ($("#store-items").find(".item").length/4)*490
			   }, 1000)*/
              },
              complete:function(data){
                loadStore();
                wishlist()
              }
          }).always(function(){
              // Sau khi thực hiện xong thì đổi giá trị cho button
              let btn = "XEM THÊM <img src=\"'.Yii::app()->baseUrl.'/images/arrow-down2.png\">"
              $button.html(btn);
              is_busy = false;
          });

      });
  });

if($(window).width()>575){
	loadStore();
}else{
	loadStoreM()
}
//search

$("#typeStore").keyup(function(){
  let text_search = $(this).val();
  let cl = window.location.href;
  let l = cl.split("?");
  if($.isArray(undefined)){
	  l=l[1].replace("=","_")
  }else{
	  l=""
  }
  $.ajax({
    url:"'.Yii::app()->baseUrl.'/ajax/searchstore",
    data:{text_search: text_search, filter:l},
    type: "post",
    dataType: "html",
    success: function(data){
      //$("#btnLoadmore").parent().hide();
      if(data.length){
        wishlist();
        $("#store-items").html(data);
        if($(window).width()>575){
          loadStore();
        }else{
          loadStoreM();
        }
      }else
      $("#store-items").html("Không tìm thấy kết quả")
    }
  })
});
function changeData(){
	let cate = $("#storecate").val();
     let where = $("#where").val();
	let cl = window.location.href;
     let l = cl.split("?");

     if(l.length>1){
   	  l=l[1].replace("=","_")
     }else{
   	  l=""
     }
     $.ajax({
       url:"'.Yii::app()->baseUrl.'/ajax/searchstore",
       data:{cate:cate, where:where, filter:l},
       type: "post",
       dataType: "html",
       success: function(data){
         //$("#btnLoadmore").parent().hide();
         if(data.length){
           wishlist();
           $("#store-items").html(data);
           if($(window).width()>575){
             loadStore();
           }else{
             loadStoreM();
           }
         }else
         $("#store-items").html("Không tìm thấy kết quả")
       }
     })
}



//mobile
$(".filter-m").unbind().click(function(){
  $(".subbox").show();
});
$(".btnclose-m").unbind().click(function(){
	$(".subbox").hide();
});
$("#btnapply").unbind().click(function(){
	var ht = "";
	if($("#storecate").val() !== ""){
		ht += "<li id=\"catestore\">"+$("#storecate").next().html()+" <img src=\"'.Yii::app()->baseUrl.'/images/btncloseitem.png\" width=\"13\"></li>";
	}

	if($("#where").val() !== ""){
		ht += "<li id=\"whereis\">"+$("#where").next().html()+" <img src=\"'.Yii::app()->baseUrl.'/images/btncloseitem.png\" width=\"13\"></li>";
	}
	$("#filteroption").html(ht)

	changeData();
	$(".subbox").hide();
	$("#catestore").find("img").unbind().click(function(){
		$("#catestore").remove();
		$("#catestore").val("");
		$("#storecate").next().html("Tất cả")
		$("#storecate").next().next().find("div").removeClass("same-as-selected");
		changeData();
	})

	$("#whereis").find("img").unbind().click(function(){
		$("#whereis").remove();
		$("#where").val("");
		$("#where").next().html("Tất cả")
		$("#where").next().next().find("div").removeClass("same-as-selected");
		changeData();
	});
});
$("#inputsearch").unbind().click(function(){
	$("#typeStore").show();
	$(this).parent().hide();
});
function loadStoreM(){
	var storeid = 0;

	$(".store").find(".item").each(function(i, j){
	  	$(j).find(".item-title").unbind().click(function(){
			$(".store").find(".item").find(".photo").removeClass("active");
			$(".store").find(".item").find(".subitem").removeClass("active");
			//$(".store").find(".item").find(".item-title").addClass("active");
			$(this).removeClass("active");
			if(storeid == $(j).attr("data-id")){
				$(j).find(".subitem").removeClass("active");
				$(j).find(".photo").removeClass("active");
				storeid = 0;
			}else{
				storeid = $(j).attr("data-id");
				$(j).find(".subitem").addClass("active");
				$(j).find(".photo").addClass("active");
			}
		});
	});
  $(".viewdetail").unbind().click(function(){
      let id = $(this).parent().parent().attr("data-id");
      let bg = $(this).parent().parent().attr("data-bg");
        $.ajax({
          url: "'.Yii::app()->baseUrl.'/ajax/store",
          data: {id: id, bg:bg, where:$("#where").val()},
          dataType: "html",
          type: "post",
          success: function(data){
            
            $("#store-content-detail").html(data)
            $("#store-detail").modal({
                show: "false"
            });

            let current_url = $("#store-items").find(".subitem.active").attr("data-href");
            console.log(current_url)
            history.pushState(null, null, current_url);

            $("#btn-closeStoreDetail").unbind().click(function(){
              $("#store-detail").modal("hide");
              history.pushState(null, null, "'.Yii::app()->baseUrl.'/store.html");
            });
            //loadStoreM();
            $("#store-detail").animate({
                  scrollTop: $("#store-content-detail").offset().top
            }, 1000);

          },//end success
          complete: function (data) {
            console.log(data)
            wishlist();
          }
        })

  })
}
', CClientScript::POS_END);
 ?>
