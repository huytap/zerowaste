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
                    <li data-id="shop">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-shop.png">
                      Cửa hàng
                    </li>
                    <li data-id="product">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-product.png">
                      Sản phẩm
                    </li>
                    <li data-id="event">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/icon-event.png">
                      Sự kiện
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="step1 step2">
            <!--div class="bg-hide"></div-->
            <div class="step">2/2</div>
            <div class="box-form">
              <div class="form">
                <label class="left">Ngành hàng</label>
                <select class="category" id="nganhhang">
                  <option value="Thực phẩm">Thực phẩm</option>
                  <option value="Thời trang">Thời trang</option>
                  <option value="Làm đẹp">Làm đẹp</option>
                </select>
              </div>
              <div class="form">
                <label class="left">Tên cửa hàng</label>
                <input class="field" type="text" id="yourshop">
              </div>
              <div class="form">
                <label class="left">Kết nối</label>
                <ul id="connect">
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-ins.png">
                    <input type="text" placeholder="Instagram" class="field" id="instagram"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-wb.png">
                    <input type="text" placeholder="Website" class="field" id="website"/>
                  </li>
                  <li>
                    <img src="<?php echo Yii::app()->baseUrl?>/images/icon-fb.png">
                    <input type="text" placeholder="Facebook" class="field" id="facebook"/>
                  </li>
                </ul>
              </div>
              <div class="form">
                <label class="left">Địa chỉ</label>
                <input class="field" type="text" id="youraddress">
              </div>
              <div class="form form-intro">
                <label class="left">Giới thiệu<br/>cửa hàng</label>
                <div class="group-intro">
                  <textarea id="yourintro" placeholder="Hãy cho chúng mình biết địa điểm hay cửa hàng này ủng hộ cho sự bền vững, giúp giảm nhựa, sống xanh như thế nào nhé!"></textarea>
                </div>
              </div>
            </div>
          </div>
          <div class="goiy text-center"><a id="btnGoiy" href="javascript:void(0);" class="btncontact btngoiy">Gợi ý</a></div>
        </div>
        <div class="popup-footer">
          <!--img src="<?php echo Yii::app()->baseUrl?>/images/form-footer-bg.png" class="img-responsive hidden-xs">
          <img src="<?php echo Yii::app()->baseUrl?>/images/form-footer-bg-m.png" class="img-responsive hidden-lg hidden-md"-->
	</div>
      </div>
    </div>
  </div>
</div>
<?php

Yii::app()->clientScript->registerScript('loadPopup', '
function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
$("#connect").find("li").each(function(i,j){
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

$("#btnGoiy").click(function(){
  let introcate = $("#introcate").find("li.active").attr("data-id");
  let cate = $("#nganhhang").val();
  let name = $("#yourname").val();
  let email = $("#youremail").val();
  let who = $("input[name=\"who\"]:checked").val();
  let address = $("#youraddress").val();
  let intro = $("#yourintro").val();
  let shop = $("#yourshop").val();
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
    $("#yourshop").focus();
  }else if($.trim(address) == ""){
    $("#youraddress").focus();
  }else if($.trim(intro) == ""){
    $("#yourintro").focus();
  }else{
    let facebook = $("#facebook").val();
    let instagram = $("#instagram").val();
    let website = $("#website").val();
    $.ajax({
      url: "'.Yii::app()->baseUrl.'/ajax/contact",
      type: "post",
      dataType: "json",
      data:{name:name, email: email, who:who, introcate: introcate, cate:cate,shop:shop, facebook:facebook, instagram:instagram, website:website,address: address, intro:intro},
      success:function(data){
        if(data == 0){
          $("#popup").find("input").val("");
          alert("Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất");
          $("#popup .close").click()
        }else{
          alert("Dữ liệu chưa được gửi đi!")
        }
      }
    })
  }
})', CClientScript::POS_END);?>
