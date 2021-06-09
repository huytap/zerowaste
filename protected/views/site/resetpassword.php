<div id="resetPopup" class="modal fade formPopup in <?php if($flag) echo 'success';?>" style="display:block" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
   <div class="modal-header">
      <a href="<?php echo Yii::app()->baseUrl?>/" class="close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn_Close.png"></span></a>
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
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_crocs.svg">
                      <img src="<?php echo Yii::app()->baseUrl?>/images/aw_ground_forgot.svg">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="formtab">
                      <h3 class="text-center">ĐẶT LẠI MẬT KHẨU</h3>
                      <?php 
                      $form = $this->beginWidget('CActiveForm', array(
                          'id' => 'grid',
                          'enableClientValidation' => true,
                          'htmlOptions' => array(
                              'class' => 'no-margin',
                          ),
                      ));?>
                        <div class="form-group">
                          <?php echo $form->passwordField($model, "new_password", array('placeholder' => 'mật khẩu')); ?>                          
                          <span><img src="<?php echo Yii::app()->baseUrl?>/images/icn_hide.svg" /></span>
                          <?php echo $form->error($model, 'new_password', array('class' => 'error')); ?>
                        </div>
        		        		<div class="form-group">
                          <?php echo $form->passwordField($model, "confirm_new_password", array('placeholder' => 'nhập lại mật khẩu')); ?> 

                          <span><img src="<?php echo Yii::app()->baseUrl?>/images/icn_hide.svg" /></span>
                          <?php echo $form->error($model, 'confirm_new_password', array('class' => 'error')); ?>
        		        		</div>
        		        		<p class="error" id="errorLogin" style="display: none;color:#fcc630!important;margin-bottom: 15px!important;"></p>
        		        		<div class="form-group text-center">
        		        			<button type="submit" class="btncontact confirm">XÁC NHẬN</button>
        		        		</div>
        		        	<?php $this->endWidget(); ?>
                    </div>
                    <div class="formtab">
                      <h3 class="text-center">THÀNH CÔNG!</h3>
      		        		<p class="text-center">Đặt lại mật khẩu thành công rồi nhé!</p>
    		        			<div class="form-group text-center">
                        <a data-toggle="modal" data-target="#loginPopup" href="#" class="btncontact">ĐĂNG NHẬP</a>
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
   Yii::app()->clientScript->registerScript('loginPopup', '
   ', CClientScript::POS_END);?>
