<div id="loginPopup" class="modal fade formPopup" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
         </div>
         <div class="modal-body">
            <div class="container">
              <div class="loginBox">
                <div class="row">
                  <div class="col-sm-6">
                    <div class="login-box-left">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_book.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_crocs.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_ground.svg">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="formtab">
                      <ul>
                        <li class="active">ĐĂNG NHẬP</li>
                        <li data-toggle="modal" data-target="#registerPopup" id="openRegister">ĐĂNG KÝ</li>
                      </ul>
                      <form method="post" id="loginform">
        		        		<div class="form-group">
        		        			<input type="text" name="LoginForm[username]" placeholder="email hoặc tên đăng nhập">
        		        		</div>
        		        		<div class="form-group">
        		        			<input type="password" name="LoginForm[password]" placeholder="mật khẩu">
        		        		</div>
        		        		<p class="error" id="errorLogin" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
        		        		<div class="form-group text-center">
        		        			<button type="submit" class="btncontact">ĐĂNG NHẬP
                          <span><img src="<?php echo Yii::app()->baseUrl?>/images/aw_kitty-hand.svg"></button>
        		        		</div>
        		        		<a href="#" data-toggle="modal" id="openForgot" data-target="#forgotPopup">bạn quên mật khẩu?</a><br/>
        		        	</form>
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
   Yii::app()->clientScript->registerScript('weloginPopup', '
   $("#openRegister, #openForgot").on("click", function () {
     $("#loginPopup").modal("hide");
   });

   $("#loginform").on("submit", function(e){
     e.preventDefault();
     $.ajax({
           url: "'.Yii::app()->baseUrl.'/site/login",
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
             $("#errorLogin").text("Sai tên đăng nhập hoặc mật khẩu");
             $("#errorLogin").show();
           }else{
             location.reload();
           }
         },
         error: function(e){

         }
       });
   });
   ', CClientScript::POS_END);?>
