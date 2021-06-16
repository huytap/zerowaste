<div id="updatePopup" class="modal fade formPopup" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></button>
   </div>
   <div class="modal-dialog" role="document">
      <div class="bg-header">
        <h3>Chỉnh sửa thông tin</h3>
      </div>
      <div class="modal-content">
         <div class="modal-body">
            <div class="container">
              <div class="loginBox">
                <div class="row">
                  <form method="post" id="updateform">
                  <div class="col-sm-7">
                    <div class="formtab">

                        <div class="form-group">
                          <label>TÊN HIỂN THỊ</label>
                          <input type="text" name="Users[fullname]" placeholder="tên hiển thị" value="<?php echo $user->fullname;?>">
                          <span class="icon_update"><img src="<?php echo Yii::app()->baseUrl?>/images/icn_edit.svg"/></span>
                        </div>
                        <div class="form-group">
                          <label>EMAIL</label>
                          <input readonly type="text" name="Users[email]" placeholder="email" value="<?php echo $user['email'];?>">
                          <!--span class="icon_update"><img src="<?php //echo Yii::app()->baseUrl?>/images/icn_edit.svg"/></span-->
                        </div>
                        <div class="form-group">
                          <label>MẬT KHẨU</label>
                          <input type="password" name="Users[new_password]" placeholder="mật khẩu">
                          <span class="showpassword"><img src="<?php echo Yii::app()->baseUrl?>/images/icn_hide.svg" /></span>
                          <span class="icon_update"><img src="<?php echo Yii::app()->baseUrl?>/images/icn_edit.svg"/></span>
                        </div>
                        <p class="error" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
                        <div class="form-group">
                          <button type="submit" class="btncontact">CẬP NHẬT</button>
                        </div>
                    </div>
                  </div>
                  <div class="col-sm-5">
                    <div class="avatar">
                      <img src="<?php echo Yii::app()->baseUrl;?>/timthumb.php?src=<?php echo Yii::app()->baseUrl;?>/uploads/<?php echo $user['avatar'];?>&w=250&h=250" class="img-responsive">
                      <span class="changeAvt"><input type="file" name="Users[avatar]" id="avatar">
                        <span><a href="javascript:void(0);">Đổi</a></span>
                      </span>
                    </div>
                  </div>

                </form>
                </div>
              </div>
            </div>
         </div>
      </div>
   </div>
</div>
<?php
   Yii::app()->clientScript->registerScript('updatePopup', '
   $(".showpassword").click(function(){
     if($(this).prev().attr("type") == "password")
      $(this).prev().attr("type", "text");
    else
      $(this).prev().attr("type", "password");
   })
   $("#updateform").on("submit", function(e){
     e.preventDefault();
     $.ajax({
           url: "'.Yii::app()->baseUrl.'/site/update",
         type: "POST",
         data:  new FormData(this),
         dataType: "json",
         contentType: false,
         cache: false,
         processData:false,
         beforeSend : function(){
           //$("#loading").show();
           $(".error").hide();
         },
         success: function(data){
           if(data==1)
            $(".error").html("Đã cập nhật thành công")
          else
            $(".error").html("Có lỗi xảy ra! Vui lòng thử lại");
          $(".error").show();
         },
         error: function(e){

         }
       });
   });
   ', CClientScript::POS_END);?>
