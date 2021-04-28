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
    <?php $this->widget('MenuWidget');?>
    <div class="products banner">
      <img src="<?php echo Yii::app()->baseUrl?>/images/product_banner.png?v=01" class="hidden-xs hidden-sm img-responsive">
	 <img src="<?php echo Yii::app()->baseUrl?>/images/product_banner-ipad.png?v=01" class="hidden-xs hidden-lg hidden-md img-responsive">
      <img src="<?php echo Yii::app()->baseUrl?>/images/product-banner-m.png?v=01" class="hidden-lg hidden-md hidden-sm img-responsive">
      <div class="banner-text">
        <h1>SƯU TẬP<br/><span>SẢN PHẨM</span></h1>
        <p>Bộ sưu tập sản phẩm zero-waste<br/>phong phú với hơn 20 sản phẩm.</p>
      </div>
    </div>
  </div>
  <div class="product-content">
    <div class="container">
      <div class="filter-box">
		 <div class="custom-select" style="width:210px">
	        <select id="storecate" class="products">
	          <option value="">Loại sản phẩm</option>
			<option value="">Tất cả</option>
	          <?php foreach(StoreCategory::model()->getList2() as $key => $value){
	            echo '<option value="'.$key.'">'.$value.'</option>';
	          }?>
	        </select>
	   </div>
        <div class="box-search pull-right hidden-xs">
          <input type="text" class="" placeholder="Search with love..." id="text_search"/>
        </div>
      </div>
	 <div id="result"></div>
      <div class="grid-container" id="photos">
        <?php
        foreach($model->getData() as $dt){
          $rand_keys = array_rand($background, 1);?>
          <div class="item">
			<div data-id="<?php echo $dt['id'];?>" data-filter="<?php echo $dt['category'];?>" data-bg="#<?php echo $background[$rand_keys]['content'];?>" style="background:#<?php echo $background[$rand_keys]['content'];?>">
			  <img src="<?php echo Yii::app()->baseUrl?>/uploads/<?php echo $dt['photo'];?>" class="img-responsive">
	            <h3 style="background:#<?php echo $background[$rand_keys]['title'];?>"><?php echo $dt['name'];?></h3>
		     </div>
          </div>
        <?php }?>
      </div>
    </div>

    <div class="product-detail">
      <div class="container">
        <div class="arrow-up"></div>
        <div class="row detail-text" id="product-detail">

        </div>
      </div>
    </div>
  </div>
</div>

<?php Yii::app()->clientScript->registerScript('product', '
function viewDetail(){
  $("#photos").find(".item div").each(function(i, j){
    $(j).click(function(){
      let id = $(j).attr("data-id");
      let bg = $(j).attr("data-bg");
	 let flag = true;
	 let attr = $(".product-detail").attr("data-id");
	 if (typeof attr !== typeof undefined){
		 $(".product-detail").attr("data-id") = id;
		 flag = false;
	 }else{

	 }
	 if(flag && $(this).hasClass("active") == false)
      $.ajax({
        url: "'.Yii::app()->baseUrl.'/ajax/product",
        data: {id: id},
        dataType: "html",
        type: "post",
        success: function(data){
          $("#product-detail").html(data)
          var marginTop = $(j).position().top + $(j).height()+30;
          var marginLeft = $(j).position().left + $(j).width()/2;
          $(".product-detail").css({top:marginTop+"px"});
          $(".arrow-up").css({left:marginLeft+"px"});
          $("#product-detail").css("background", bg);
          $(".arrow-up").css("border-bottom", "18px solid " + bg)
          if($(j).hasClass("active")){
            $(j).removeClass("active")
            $(".product-detail").hide();
          }else{
            $(".item").removeClass("active");
            $(j).addClass("active")
            $(".product-detail").show();
          }
		$("html, body").animate({
	        scrollTop: ($("#product-detail").offset().top - 200)
	   }, 1000);
        }
   	  });
	  else {
	    $(j).removeClass("active")
	    $(".product-detail").hide();
	  }
    })
  });
}
//search
function searchByText(){
  $("#text_search").keyup(function(){
    let text_search = $(this).val();
    $.ajax({
      url:"'.Yii::app()->baseUrl.'/ajax/searchproduct",
      data:{text_search: text_search},
      type: "post",
      dataType: "html",
      success: function(data){
        if(data.length){
          $("#photos").html(data);
		$("#result").hide();
	}else{
		$("#photos").html("");
        $("#result").html("Không tìm thấy kết quả")
	   $("#result").show();
        viewDetail()
      }
 }
    })
  });
}
function searchByCate(){
    let cate = $("#storecate").val();
    let where = $("#where").val();
    $.ajax({
      url:"'.Yii::app()->baseUrl.'/ajax/searchproduct",
      data:{cate:cate, where:where},
      type: "post",
      dataType: "html",
      success: function(data){
        if(data.length){
          $("#photos").html(data);
		$("#result").hide();
	}else{
		$("#photos").html("");
        $("#result").html("Không tìm thấy kết quả")
	   $("#result").show();
        viewDetail()
   }
}
 });
}
searchByText();
viewDetail()
', CClientScript::POS_END);
