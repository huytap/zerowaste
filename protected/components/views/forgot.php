<div id="forgotPopup" class="modal fade formPopup" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
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
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_books.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_crocs_forgot.svg"><!--aw_suprise.svg-->
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_ground_forgot.svg">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="formtab">
                      <ul>
                        <li class="active">BẠN QUÊN MẬT KHẨU?</li>
                      </ul>
                      <form method="post">
        		        		<div class="form-group">
        		        			<input type="text" name="LoginForm[email]" placeholder="nhập email">
                          <!--Link reset mật khẩu đã được gửi về email zukop@gmail.com-->
        		        		</div>
        		        		<p class="error" id="errorLogin" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
        		        		<div class="form-group text-center">
        		        			<button type="submit" class="btncontact">TIẾP TỤC
                            <span><img src="<?php echo Yii::app()->baseUrl?>/images/aw_kitty-hand-forgot.svg"></button>
        		        		</div>
        		        		<div class="text-center">
                          <a href="#" data-toggle="modal" data-target="#loginPopup" id="returnLogin">trở lại màn hình Đăng nhập</a><br/>
                          <a href="#" id="resend">Bạn chưa nhận được link reset? Gửi lại</a>
                        </div>
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
   Yii::app()->clientScript->registerScript('forgotPopup', '
   $("#returnLogin").on("click", function () {
     $("#forgotPopup").modal("hide");
   });
   ', CClientScript::POS_END);?>
