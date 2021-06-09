<div id="registerPopup" class="modal fade formPopup" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
   </div>
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-body">
            <div class="container">
              <div class="loginBox">
                <div class="row">
                  <div class="col-sm-6">
                    <div class="login-box-left">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/zebra.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/artwork_dangky.svg">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="formtab">
                      <ul>
                        <li data-toggle="modal" data-target="#loginPopup" id="openLogin">ĐĂNG NHẬP</li>
                        <li class="active">ĐĂNG KÝ</li>
                      </ul>
                      <form method="post" id="registerform">
        		        		<div class="form-group">
        		        			<input type="text" name="Users[email]" placeholder="email">
        		        		</div>
                        <div class="form-group">
        		        			<input type="text" name="Users[fullname]" placeholder="tên hiển thị">
        		        		</div>
        		        		<div class="form-group">
        		        			<input type="password" name="Users[password]" placeholder="mật khẩu">
                          <span><img src="<?php echo Yii::app()->baseUrl?>/images/icn_hide.svg" /></span>
                        </div>
        		        		<div class="form-group">
        		        			<input type="password" name="Users[confirm_new_password]" placeholder="nhập lại mật khẩu">
                          <span><img src="<?php echo Yii::app()->baseUrl?>/images/icn_hide.svg" /></span>
        		        		</div>
        		        		<p class="error" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
        		        		<div class="form-group text-center">
        		        			<button type="submit" class="btncontact">ĐĂNG KÝ</button>
        		        		</div>
        		        	</form>
                    </div>
                    <div class="formtab">
                      <h3 class="text-center">THÀNH CÔNG!</h3>
                      <p class="text-center">Bạn đã đăng ký thành công!</p>
    		        			<div class="form-group text-center">
                        <a data-toggle="modal" data-target="#loginPopup" href="#" class="btncontact" id="backLogin">ĐĂNG NHẬP</a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="loginElement">
                  <img src="<?php echo Yii::app()->baseUrl?>/images/aw_rock.svg"/>
                  <img src="<?php echo Yii::app()->baseUrl?>/images/aw_bush.svg"/>
                  <img src="<?php echo Yii::app()->baseUrl?>/images/aw_bush-1.svg"/>
                  <img src="<?php echo Yii::app()->baseUrl?>/images/aw_bush-2.svg"/>
                </div>
              </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php
   Yii::app()->clientScript->registerScript('PPRegister', '
   $("#openLogin, #backLogin").on("click", function () {
     $("#registerPopup").modal("hide");
   });

   $("#registerform").on("submit", function(e){
     e.preventDefault();
     if($.trim($("#registerform").find(".form-group:first-child input").val()) == ""){
       $("#registerform").find(".error").text("Vui lòng nhập email");
       $("#registerform").find(".form-group:first-child input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else if(!isEmail($("#registerform").find(".form-group:first-child input").val())){
       $("#registerform").find(".error").text("Vui lòng nhập đúng định dạng Email")
       $("#registerform").find(".form-group:first-child input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else if($.trim($("#registerform").find(".form-group:nth-child(2) input").val()) == ""){
       $("#registerform").find(".error").text("Vui lòng nhập tên hiển thị");
       $("#registerform").find(".form-group:nth-child(2) input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else if($.trim($("#registerform").find(".form-group:nth-child(3) input").val()) == ""){
       $("#registerform").find(".error").text("Vui lòng nhập mật khẩu");
       $("#registerform").find(".form-group:nth-child(3) input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else if($.trim($("#registerform").find(".form-group:nth-child(4) input").val()) == ""){
       $("#registerform").find(".error").text("Vui lòng nhập lại mật khẩu");
       $("#registerform").find(".form-group:nth-child(4) input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else if($("#registerform").find(".form-group:nth-child(3) input").val() !== $("#registerform").find(".form-group:nth-child(4) input").val()){
       $("#registerform").find(".error").text("Nhập lại mật khẩu không đúng");
       $("#registerform").find(".form-group:nth-child(4) input").focus();
       $("#registerform").find(".error").show();
       return false;
     }else{
       $.ajax({
           url: "'.Yii::app()->baseUrl.'/site/register",
           type: "POST",
           data:  new FormData(this),
           dataType: "json",
           contentType: false,
           cache: false,
           processData:false,
           beforeSend : function(){
             //$("#loading").show();
           },
           success: function(data){
             //$("#loading").hide();
             if(data==0){
               $("#registerform").find(".error").text("Đã có lỗi xảy ra, vui lòng thử lại")
               $("#registerform").find(".error").show();
             }else if(data == -1){
               $("#registerform").find(".error").text("Email đã được đăng ký! Vui lòng thử mail khác")
               $("#registerform").find(".error").show();
             }else if(data == 1){
               $("#registerPopup").addClass("success")
             }
           },
           error: function(e){

           }
         });
     }

   });
   ', CClientScript::POS_END);?>
