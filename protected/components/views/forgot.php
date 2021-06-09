<div id="forgotPopup" class="modal fade formPopup" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
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
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_books.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_crocs_forgot.svg"><!--aw_suprise.svg-->
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_ground_forgot.svg">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="formtab">
                      <h3>BẠN QUÊN MẬT KHẨU?</h3>
                      <form method="post" id="forgotpassword">
        		        		<div class="form-group">
        		        			<input type="text" id="fgEmail" name="Users[email]" placeholder="nhập email">
                          <!--Link reset mật khẩu đã được gửi về email zukop@gmail.com-->
        		        		</div>
        		        		<p class="error" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
        		        		<div class="form-group text-center">
        		        			<button type="submit" class="btncontact" id="continueForgot">TIẾP TỤC
                            <span><img src="<?php echo Yii::app()->baseUrl?>/images/aw_kitty-hand-forgot.svg"></button>
        		        		</div>
        		        	</form>
                    </div>
                    <div class="formtab">
                      <h3>BẠN QUÊN MẬT KHẨU?</h3>
        		        		<div class="text-center">
                          <p>Link reset mật khẩu đã được gửi về email <span id="emailForgot"></span></p>
                          <a href="#" id="resend">Bạn chưa nhận được link reset? Gửi lại</a>
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
   Yii::app()->clientScript->registerScript('forgotPopup', '
   $("#returnLogin").on("click", function () {
     $("#forgotPopup").modal("hide");
   });
   $("#forgotpassword").on("submit", function(e){
     e.preventDefault();
     if($.trim($("#fgEmail").val()) == ""){
       $("#forgotpassword").find(".error").text("Vui lòng nhập Email")
       $("#forgotpassword").find(".error").show();
       $("#fgEmail").focus();
       flag = false;
     }else if(!isEmail($("#fgEmail").val())){
       $("#forgotpassword").find(".error").text("Vui lòng nhập đúng định dạng Email")
       $("#forgotpassword").find(".error").show();
       $("#fgEmail").focus();
       flag = false;
     }else{
       $.ajax({
             url: "'.Yii::app()->baseUrl.'/site/forgotpassword",
           type: "POST",
           data:  new FormData(this),
           dataType: "json",
           contentType: false,
           cache: false,
           processData:false,
           beforeSend : function(){
             $("#loading").show();
           },
           success: function(data){
             $("#loading").hide();
             if(data.status == -1){
               $("#forgotpassword").find(".error").text("Email này không tồn tại trong hệ thống. Vui lòng kiểm tra lại");
               $("#forgotpassword").find(".error").show();
               
             }else{
               $("#forgotPopup").addClass("success");
               $("#emailForgot").text(data.email)
               $("#forgotPopup").find(".login-box-left").find("img:nth-child(2)").attr("src", data.src)
             }
           },
           error: function(e){

           }
         });
     }
   });
   $("#resend").click(function(){
      $("#forgotpassword").submit();
    })
   ', CClientScript::POS_END);?>
