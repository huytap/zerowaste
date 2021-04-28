<div id="popup" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
      </div>
      <div class="modal-body">
        <div class="container">
          <h3>GỢI Ý</h3>
          <p class="text-center">Thêm một cửa hàng, một sản phẩm zero-waste là thêm một điểm "vui chơi"<br/>
            cho tất cả chúng ta. Nếu bạn biết một nơi thú vị như thế,<br/>
            hãy giới thiệu với tụi mình!
          </p>
          <div class="step1">
            <!--div class="bg-hide"></div-->
            <div class="step">1/2</div>
            <div class="icon hidden-xs"><img src="<?php echo Yii::app()->baseUrl?>/images/form-icon-top.png"></div>
            <div class="box-form">
              <div class="form">
                <label class="left">Tên</label>
                <input class="field" type="text" id="yourname">
              </div>
              <div class="form">
                <label class="left">Email</label>
                <input class="field" type="text" id="youremail">
              </div>
              <div class="form">
                <label class="left">Bạn là</label>
                <div class="radio">
                  <label>
                    <input type="radio" name="who" value="Khách mua hàng">
                    Khách mua hàng
                  </label>
                  <label>
                    <input type="radio" name="who" value="Chủ doanh nghiệp">
                    Chủ doanh nghiệp
                  </label>
                </div>
              </div>
              <div class="form form-intro">
                <label class="left">Bạn muốn giới thiệu</label>
                <div class="group-intro">
                  <ul id="introcate">
                    <li data-toggle="tab" data-id="shop" data-toggle="tab" data-target="#cuahang">
                      <span><img src="<?php echo Yii::app()->baseUrl?>/images/icon-shop.png"></span>
                      Cửa hàng
                    </li>
                    <li data-toggle="tab" data-id="product" data-target="#sanpham">
                      <span><img src="<?php echo Yii::app()->baseUrl?>/images/icon-product.png"></span>
                      Sản phẩm
                    </li>
                    <li data-toggle="tab" data-id="event" data-target="#tintuc">
                      <span><img src="<?php echo Yii::app()->baseUrl?>/images/icon-event.png"></span>
                      Sự kiện
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="step1 step2 tab-content">
            <!--div class="bg-hide"></div-->
            <div class="step">2/2</div>
            <div class="box-form tab-pane active" id="cuahang">

              <div class="form" id="cuahang">
                <label class="left">Ngành hàng</label>
			 <!--category nganhhang-->
			 <div class="custom-select field">
				  <select>
					  <option value="">Chọn loại</option>
				    <?php foreach(StoreCategory::model()->getList2() as $key => $value){
				    echo '<option value="'.$key.'">'.$value.'</option>';
				  }?>
				  </select>
			  </div>
              </div>
              <div class="form">
                <label class="left">Tên cửa hàng</label>
                <input class="field yourshop" type="text">
              </div>
              <div class="form">
                <label class="left">Kết nối</label>
                <ul class="connect">
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins.png">
                    <input type="text" placeholder="Instagram" class="field instagram"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-wb.png">
                    <input type="text" placeholder="Website" class="field website"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb.png">
                    <input type="text" placeholder="Facebook" class="field facebook"/>
                  </li>
                </ul>
              </div>
              <div class="form">
                <label class="left">Địa chỉ</label>
                <input class="field youraddress" type="text">
              </div>
              <div class="form form-intro">
                <label class="left">Giới thiệu<br/>cửa hàng</label>
                <div class="group-intro">
                  <textarea class="yourintro" placeholder="Hãy cho chúng mình biết địa điểm hay cửa hàng này ủng hộ cho sự bền vững, giúp giảm nhựa, sống xanh như thế nào nhé!"></textarea>
                </div>
              </div>
            </div>
		  <!--sản phẩm-->
		  <div class="box-form tab-pane" id="sanpham">
              <div class="form">
                <label class="left">Loại sản phẩm</label>
			 <div class="custom-select field">
				  <select>
					  <option value="">Chọn loại</option>
				    <?php foreach(StoreCategory::model()->getList2() as $key => $value){
				    echo '<option value="'.$key.'">'.$value.'</option>';
				  }?>
				  </select>
			  </div>
                <!--select class="category nganhhang">


                </select-->
              </div>
              <div class="form">
                <label class="left">Tên sản phẩm</label>
                <input class="field yourshop" type="text">
              </div>
              <div class="form">
                <label class="left">Kết nối</label>
                <ul class="connect">
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins.png">
                    <input type="text" placeholder="Instagram" class="field instagram"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-wb.png">
                    <input type="text" placeholder="Website" class="field website"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb.png">
                    <input type="text" placeholder="Facebook" class="field facebook"/>
                  </li>
                </ul>
              </div>
              <div class="form">
                <label class="left">Địa chỉ</label>
                <input class="field youraddress" type="text">
              </div>
              <div class="form form-intro">
                <label class="left">Giới thiệu<br>sản phẩm</label>
                <div class="group-intro">
                  <textarea class="yourintro" placeholder="Hãy cho chúng mình biết sản phẩm này ủng hộ cho sự bền vững, giúp giảm nhựa, sống xanh như thế nào nhé!"></textarea>
                </div>
              </div>
            </div>
		  <!--sự kiện-->
		  <div class="box-form tab-pane" id="tintuc">
              <div class="form">
                <label class="left">Loại sự kiện</label>
			 <div class="custom-select field">
				  <select>
					  <option value="">Chọn loại</option>
					  <option value="Tin tức">Tin tức</option>
                           <option value="Sự kiện">Sự kiện</option>
				  </select>
			  </div>
                <!--select class="category nganhhang">
				 <option value="Thực phẩm">Tin tức</option>
                     <option value="Thời trang">Sự kiện</option>
                </select-->
              </div>
              <div class="form">
                <label class="left">Tên sự kiện</label>
                <input class="field yourshop" type="text">
              </div>
              <div class="form">
                <label class="left">Kết nối</label>
                <ul class="connect">
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins.png">
                    <input type="text" placeholder="Instagram" class="field instagram"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-wb.png">
                    <input type="text" placeholder="Website" class="field website"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb.png">
                    <input type="text" placeholder="Facebook" class="field facebook"/>
                  </li>
                </ul>
              </div>
              <div class="form">
                <label class="left">Địa chỉ</label>
                <input class="field youraddress" type="text">
              </div>
              <div class="form form-intro">
                <label class="left">Giới thiệu<br/>sự kiện</label>
                <div class="group-intro">
                  <textarea class="yourintro" placeholder="Hãy cho chúng mình biết sự kiện này ủng hộ cho sự bền vững, giúp giảm nhựa, sống xanh như thế nào nhé!"></textarea>
                </div>
              </div>
            </div>
		</div>
          <div class="goiy text-center"><a id="btnGoiy" href="javascript:void(0);" class="btncontact btngoiy">Gợi ý</a></div>
        </div>
        <div class="popup-footer">
          <!--img src="<?php echo Yii::app()->baseUrl?>/images/form-footer-bg.png" class="img-responsive hidden-xs"-->
          <img src="<?php echo Yii::app()->baseUrl?>/images/form-footer-bg-m.png" class="img-responsive hidden-lg hidden-md hidden-sm">
	</div>
      </div>
    </div>
  </div>
</div>
<div id="popupsuccess" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		 <span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png" width="30"></span></button>
	 <img src="<?php echo Yii::app()->baseUrl?>/images/success.png" class="img-responsive"/>
	</div>
  </div>
</div>
<?php

Yii::app()->clientScript->registerScript('loadPopup', '
$(document).ready(function(){
	$("#btnGoiy").click(function(){
	  let introcate = $("#introcate").find("li.active").attr("data-id");
	  let name = $("#yourname").val();
	  let email = $("#youremail").val();

	  let who = $("input[name=\"who\"]:checked").val();
	  let cate = $(".nganhhang").val();
	  let address = $(".box-form.active").find(".youraddress").val();
	  let intro = $(".box-form.active").find(".yourintro").val();
	  let shop = $(".box-form.active").find(".yourshop").val();
	  if($.trim(name) === ""){
	    $("#yourname").focus();
	  }else if($.trim(email) == ""){
	    $("#youremail").focus();
	  }else if(!isEmail(email)){
	    alert("Email sai định dạng");
	    $("#youremail").focus();
	  }else if($.trim(who) == ""){
	    alert("Vui lòng chọn mục Bạn là");
	  }else if($.trim(introcate) == ""){
	    alert("Vui lòng chọn mục Bạn muốn giới thiệu")
	  }else if($.trim(cate) == ""){
	    alert("Vui lòng chọn ngành hàng")
	  }else if($.trim(shop) == ""){
	    $(".box-form.active").find(".yourshop").focus();
    }/*else if($.trim(address) == ""){
	    $(".box-form.active").find(".youraddress").focus();
    }*/else if($.trim(intro) == ""){
	    $(".box-form.active").find(".yourintro").focus();
	  }else{
	    let facebook = $(".box-form.active").find(".facebook").val();
	    let instagram = $(".box-form.active").find(".instagram").val();
	    let website = $(".box-form.active").find(".website").val();
	    $.ajax({
	      url: "'.Yii::app()->baseUrl.'/ajax/contact",
	      type: "post",
	      dataType: "json",
	      data:{name:name, email: email, who:who, introcate: introcate, cate:cate,shop:shop, facebook:facebook, instagram:instagram, website:website,address: address, intro:intro},
	      success:function(data){
	        if(data == 0){
	          $("#popup").find("input").val("");
			$("#popup").modal("hide").on("hidden.bs.modal", function (e) {
	                $("#popupsuccess").modal("show");
	                $(this).off("hidden.bs.modal");
	            });
	        }else{
	          alert("Dữ liệu chưa được gửi đi!")
	        }
	      }
	    })
	  }
	})
})
function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
$(".connect").find("li").each(function(i,j){
  $(j).click(function(){
    //$("#connect").find("li").removeClass("active");
    $(this).addClass("active");
    connect = $(this).find("input").val();
  })
});

$("#introcate").find("li").each(function(i, j){
  $(j).click(function(){
    $("#introcate").find("li").removeClass("active");
    $(this).addClass("active");
  });
});

', CClientScript::POS_END);?>
