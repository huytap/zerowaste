<aside class="fixed skin-6">
    <div class="sidebar-inner scrollable-sidebar">
        <div class="size-toggle">
            <a class="btn btn-sm" id="sizeToggle">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="btn btn-sm pull-right logoutConfirm_open"  href="<?php echo Yii::app()->baseUrl?>/admin/site/logout">
                <i class="fa fa-power-off"></i>
            </a>
        </div>
        <div class="user-block clearfix">
            <img style="background: #fff" src="<?php echo Yii::app()->theme->baseUrl?>/img/<?php echo $user['gender']?>.png" alt="User Avatar">
            <div class="detail">
                <strong><?php echo $user['fullname']?></strong><!-- <span class="badge badge-danger m-left-xs bounceIn animation-delay4">4</span> -->
                <ul class="list-inline">
                    <!-- <li><a href="inbox.html" class="no-margin">Inbox</a></li> -->
                </ul>
            </div>
        </div><!-- /user-block -->
        <div class="search-block">
            <div class="input-group">
                <input type="text" class="form-control input-sm" placeholder="search here...">
                <span class="input-group-btn">
                    <button class="btn btn-default btn-sm" type="button"><i class="fa fa-search"></i></button>
                </span>
            </div><!-- /input-group -->
        </div><!-- /search-block -->
        <div class="main-menu">
            <ul>
		  <li>
			 <a href="<?php echo Yii::app()->createUrl('admin/storecategory/admin');?>">
			    <span class="menu-icon">
				   <i class="fa fa-th-large"></i>
			    </span>
			    <span class="text">
				   Ngành hàng
			    </span>
			    <span class="menu-hover"></span>
			 </a>
		  </li>
                <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/store/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Địa điểm
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/storebrand/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Chi nhánh địa điểm
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
			 <li>
			     <a href="<?php echo Yii::app()->createUrl('admin/category/admin');?>">
			 	   <span class="menu-icon">
			 		  <i class="fa fa-th-large"></i>
			 	   </span>
			 	   <span class="text">
			 		  Danh mục sản phẩm
			 	   </span>
			 	   <span class="menu-hover"></span>
			     </a>
			 </li>
			 <li>
			     <a href="<?php echo Yii::app()->createUrl('admin/productgallery/admin');?>">
			 	   <span class="menu-icon">
			 		  <i class="fa fa-th-large"></i>
			 	   </span>
			 	   <span class="text">
			 		  Hình sản phẩm
			 	   </span>
			 	   <span class="menu-hover"></span>
			     </a>
			 </li>
			 <li>
			     <a href="<?php echo Yii::app()->createUrl('admin/newscategory/admin');?>">
			 	   <span class="menu-icon">
			 		  <i class="fa fa-th-large"></i>
			 	   </span>
			 	   <span class="text">
			 		  Danh mục tin tức
			 	   </span>
			 	   <span class="menu-hover"></span>
			     </a>
			 </li>
			 <li>
			     <a href="<?php echo Yii::app()->createUrl('admin/news/admin');?>">
			 	   <span class="menu-icon">
			 		  <i class="fa fa-th-large"></i>
			 	   </span>
			 	   <span class="text">
			 		  Tin tức
			 	   </span>
			 	   <span class="menu-hover"></span>
			     </a>
			 </li>
                <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/gallery/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Hình ảnh địa điểm
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
			 <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/contact/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Liên hệ
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/slideshow/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Sliders
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
			 <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/seo/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            SEO
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo Yii::app()->createUrl('admin/settings/admin');?>">
                        <span class="menu-icon">
                            <i class="fa fa-th-large"></i>
                        </span>
                        <span class="text">
                            Settings
                        </span>
                        <span class="menu-hover"></span>
                    </a>
                </li>
            </ul>
        </div><!-- /main-menu -->
    </div><!-- /sidebar-inner -->
</aside>
