<style>
#loginPopup{
  background: #f2fdff;
}
#loginPopup .modal-dialog{
  width: 100%;
    background: #f2fdff;
    height: 100%;
    top: 0;
    margin: 0;
}
.loginBox{
  max-width: 1046px;
  max-height: 578px;
  border: 2px solid #030504;
  border-radius: 27px;
  margin: 0 auto;
}
.login-box-left{
  background: #FDC10F;
}
.login-box-left{
  border-top-left-radius: 27px;
  border-bottom-left-radius: 27px;
  position: relative;
  height: 574px;
}
.login-box-left img{
  position: absolute;
}
.login-box-left img:first-child{
  top: 88px;
  left: 63px;
}
.login-box-left img:nth-child(2){
  bottom: 48px;
  left: 0;
  right:0;
  margin: 0 auto;
}
.login-box-left img:last-child{
  bottom: 24px;
  left: 0;
  right:0;
  margin: 0 auto;
}
.formtab ul{
  margin: 50px 0;
}
.formtab li{
  cursor: pointer;
  text-align: center;
  font: normal normal normal 36px/18px Bungee;
  color: #E2E2E2;
  display: inline-block;
}
.formtab li.active{
  color: #329B82;
}
.formtab{
  padding-left: 30px;
  padding-right: 60px;
}
#loginform input{
  text-align: left;
  font: normal normal bold 18px/24px Comfortaa;
  color: #B1B1B1;
  border:0;
  border-bottom: 1px solid #329B82;
  border-radius: 0 0;
  -webkit-border-radius: 0 0;
  background: transparent;
  width: 100%;
}
#loginform input:focus{
  outline: none;
}
#loginform .form-group{
  margin-bottom: 30px;
}
#loginform .btncontact{
  margin-top: 113px;
}
#openForgot{
  display: block;
  text-align: center;
  text-decoration: underline;
  font: normal normal bold 16px/20px Comfortaa;
  color: #000000;
}
</style>
<div id="loginPopup" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
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
                        <li data-toggle="modal" id="openRegister" data-target="#formRegister">ĐĂNG KÝ</li>
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
        		        			<button type="submit" class="btncontact">ĐĂNG NHẬP</button>
        		        		</div>
        		        		<a href="#" data-toggle="modal" id="openForgot" data-target="#formForgot">bạn quên mật khẩu?</a><br/>
        		        	</form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php
   Yii::app()->clientScript->registerScript('loginPopup', '
   ', CClientScript::POS_END);?>
