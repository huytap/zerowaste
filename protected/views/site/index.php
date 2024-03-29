<?php
$map = Yii::app()->params['district'];

?>
<style>
video{
	width: 100%;
  height: auto;
}

</style>
<div class="wrapper home">
	<div class="header">
	     <?php $this->widget('MenuWidget');?>
		<div class="slide hidden-xs">
			<div class="slide-item it1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_desk_01.jpg?v=01" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_00.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_01.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_02.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_03.svg" class="img-responsive balloon">
			</div>
			<div class="slide-item it2">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_desk_02.jpg?v=01" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_04.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_05.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_06.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_07.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_08.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_09.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_10.svg?v=1" class="img-responsive x4">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_11.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_12.svg" class="img-responsive x1">
			</div>
			<div class="slide-item it3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_desk_03.jpg?v=01" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_13.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_14.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_15.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_16.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_17.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_18.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_04.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_19.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_20.svg" class="img-responsive">
			</div>
			<div class="slide-item it4">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_desk_04.jpg?v=01" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_21.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_22.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_23.svg" class="img-responsive x1">
			</div>
		</div>
		<div class="slidem hidden-lg hidden-md hidden-sm">
			<div class="slide-item it1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_mobi_01.jpg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_00.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_01.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_02.svg" class="img-responsive x1">
			</div>
			<div class="slide-item it2">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_mobi_02.jpg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_03.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_07.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_08.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_03.svg" class="img-responsive x3">
			</div>
			<div class="slide-item it3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_mobi_03.jpg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_04.svg" class="img-responsive x1">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_05.svg" class="img-responsive balloon">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_04.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_10.svg?v=1" class="img-responsive x4">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_11.svg" class="img-responsive">
			</div>
			<div class="slide-item it4">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_mobi_04.jpg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_18.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_19.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_05.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_06.svg" class="img-responsive x3">
			</div>
			<div class="slide-item it5">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/slider_mobi_05.jpg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/img_20.svg" class="img-responsive">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_07.svg" class="img-responsive x3">
				<img src="<?php echo Yii::app()->baseUrl?>/images/slide/m_08.svg" class="img-responsive x3">
			</div>
		</div>
	</div>
	<div class="section">
		<div class="home-content">
			<?php
			echo Settings::model()->getSetting('zw_intro');?>
		</div>
		<div class="btn-cta hidden-xs"><img src="<?php echo Yii::app()->baseUrl?>/images/btn-cta.png" ></div>
		<div class="games text-right hidden-xs">
			<img src="<?php echo Yii::app()->baseUrl?>/images/tree.png" />
		</div>
		<div class="hidden-lg hidden-md hidden-xs">
			<img src="<?php echo Yii::app()->baseUrl?>/images/bottom-shadow-ipad.png" class="mg-responsive" width="100%">
		</div>
		<div class="map row hidden-sm hidden-xs">
			<div class="col-md-5" style="height:100%;">
				<div class="map-left">
					<div class="text">
						<div class="line1">Dò tìm</div>
						<div class="line2">khám phá</div>
						<p>Khám phá <span class="dd"><?php echo StoreBrand::model()->getTotalStore();?></span> địa điểm zero-waste thú vị ở TP. HCM!</p>
						<a href="<?php echo Yii::app()->baseUrl?>/store.html" class="btn-view btncontact">
							Xem danh sách
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-7">
				<div class="map-right">
					<svg class="img-responsive" id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="1073.14" height="1039.55" viewBox="0 0 1073.14 1039.55">
					  <defs>
					    <style>
					      .cls-1, .cls-5, .cls-8, .cls-9 {
					        fill: none;
					      }

					      .cls-2, .cls-3 {
					        fill: #ffc064;
					      }

					      .cls-3 {
					        stroke: #231f20;
					        stroke-miterlimit: 10;
					      }

					      .cls-4 {
					        fill: #01ac83;
					      }

					      .cls-5 {
					        stroke: #048946;
					      }

					      .cls-5, .cls-8, .cls-9 {
					        stroke-linecap: round;
					        stroke-linejoin: round;
					        stroke-width: 2px;
					      }

					      .cls-6 {
					        opacity: 0.2;
					      }

					      .cls-7 {
					        clip-path: url(#clip-path);
					      }

					      .cls-8 {
					        stroke: #000;
					      }

					      .cls-9 {
					        stroke: #12af5d;
					      }

					      .cls-10 {
					        clip-path: url(#clip-path-2);
					      }

					      .cls-11 {
					        clip-path: url(#clip-path-3);
					      }

					      .cls-12 {
					        clip-path: url(#clip-path-4);
					      }

					      .cls-13 {
					        clip-path: url(#clip-path-5);
					      }

					      .cls-14 {
					        clip-path: url(#clip-path-6);
					      }

					      .cls-15 {
					        clip-path: url(#clip-path-7);
					      }

					      .cls-16 {
					        clip-path: url(#clip-path-8);
					      }

					      .cls-17 {
					        clip-path: url(#clip-path-9);
					      }

					      .cls-18 {
					        clip-path: url(#clip-path-10);
					      }

					      .cls-19 {
					        clip-path: url(#clip-path-11);
					      }

					      .cls-20 {
					        clip-path: url(#clip-path-12);
					      }

					      .cls-21 {
					        clip-path: url(#clip-path-13);
					      }

					      .cls-22 {
					        clip-path: url(#clip-path-14);
					      }

					      .cls-23 {
					        clip-path: url(#clip-path-15);
					      }

					      .cls-24 {
					        clip-path: url(#clip-path-16);
					      }

					      .cls-25 {
					        clip-path: url(#clip-path-17);
					      }

					      .cls-26 {
					        clip-path: url(#clip-path-18);
					      }

					      .cls-27 {
					        clip-path: url(#clip-path-19);
					      }

					      .cls-28 {
					        clip-path: url(#clip-path-20);
					      }

					      .cls-29 {
					        clip-path: url(#clip-path-21);
					      }

					      .cls-30 {
					        clip-path: url(#clip-path-22);
					      }

					      .cls-31 {
					        clip-path: url(#clip-path-23);
					      }

					      .cls-32 {
					        clip-path: url(#clip-path-24);
					      }

					      .cls-33 {
					        clip-path: url(#clip-path-25);
					      }

					      .cls-34 {
					        clip-path: url(#clip-path-26);
					      }

					      .cls-35 {
					        clip-path: url(#clip-path-27);
					      }

					      .cls-36 {
					        clip-path: url(#clip-path-28);
					      }

					      .cls-37 {
					        clip-path: url(#clip-path-29);
					      }

					      .cls-38 {
					        clip-path: url(#clip-path-30);
					      }

					      .cls-39 {
					        fill: #12af5d;
					      }

					      .cls-40 {
					        fill: #48b6f6;
					      }
					    </style>
					    <clipPath id="clip-path" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="746.93" y="756.21" width="27.72" height="18.97"/>
					    </clipPath>
					    <clipPath id="clip-path-2" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="394.78" y="578.44" width="2" height="8.5"/>
					    </clipPath>
					    <clipPath id="clip-path-3" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="401.12" y="574.45" width="2.92" height="13.55"/>
					    </clipPath>
					    <clipPath id="clip-path-4" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="407.78" y="576.44" width="2" height="10.5"/>
					    </clipPath>
					    <clipPath id="clip-path-5" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="552.27" y="564.59" width="2" height="8.5"/>
					    </clipPath>
					    <clipPath id="clip-path-6" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="558.6" y="560.6" width="2.92" height="13.55"/>
					    </clipPath>
					    <clipPath id="clip-path-7" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="565.27" y="562.59" width="2" height="10.5"/>
					    </clipPath>
					    <clipPath id="clip-path-8" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="453.2" y="454.8" width="14.62" height="12.45"/>
					    </clipPath>
					    <clipPath id="clip-path-9" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="354.31" y="469.36" width="13.18" height="8.01"/>
					    </clipPath>
					    <clipPath id="clip-path-10" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="241.53" y="682.09" width="14.46" height="8.52"/>
					    </clipPath>
					    <clipPath id="clip-path-11" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="348.25" y="367" width="16.67" height="13.83"/>
					    </clipPath>
					    <clipPath id="clip-path-12" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="565.54" y="423.65" width="13.59" height="9.5"/>
					    </clipPath>
					    <clipPath id="clip-path-13" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="415.56" y="641.14" width="13.51" height="15.52"/>
					    </clipPath>
					    <clipPath id="clip-path-14" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="532.84" y="531.03" width="13.51" height="15.52"/>
					    </clipPath>
					    <clipPath id="clip-path-15" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="600.53" y="625.38" width="15.6" height="13.48"/>
					    </clipPath>
					    <clipPath id="clip-path-16" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="633.87" y="506.78" width="17" height="14.95"/>
					    </clipPath>
					    <clipPath id="clip-path-17" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="469.36" y="327.87" width="17" height="14.95"/>
					    </clipPath>
					    <clipPath id="clip-path-18" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="404.31" y="208.32" width="17" height="14.95"/>
					    </clipPath>
					    <clipPath id="clip-path-19" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="766.74" y="652.14" width="15.38" height="13.56"/>
					    </clipPath>
					    <clipPath id="clip-path-20" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="246.58" y="452.52" width="15.38" height="13.56"/>
					    </clipPath>
					    <clipPath id="clip-path-21" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="656.06" y="759.19" width="17.5" height="11.7"/>
					    </clipPath>
					    <clipPath id="clip-path-22" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="650.8" y="439.52" width="15.01" height="12.62"/>
					    </clipPath>
					    <clipPath id="clip-path-23" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="538.11" y="665.55" width="15.01" height="12.62"/>
					    </clipPath>
					    <clipPath id="clip-path-24" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="374.62" y="802.11" width="16.38" height="22.49"/>
					    </clipPath>
					    <clipPath id="clip-path-25" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="778.66" y="425.03" width="16.38" height="22.48"/>
					    </clipPath>
					    <clipPath id="clip-path-26" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="303.22" y="573.23" width="16.38" height="22.48"/>
					    </clipPath>
					    <clipPath id="clip-path-27" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="298.42" y="767.68" width="13.98" height="13.47"/>
					    </clipPath>
					    <clipPath id="clip-path-28" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="430.44" y="694.1" width="13.98" height="13.47"/>
					    </clipPath>
					    <clipPath id="clip-path-29" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="547.9" y="238.13" width="14.61" height="24.47"/>
					    </clipPath>
					    <clipPath id="clip-path-30" transform="translate(-1.62 -0.21)">
					      <rect class="cls-1" x="672.84" y="659.62" width="14.61" height="24.47"/>
					    </clipPath>
					  </defs>
					  <title>map</title>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=10" class="district">
						  <g data-dist="10">
						    <path class="cls-2" d="M403.6,659.3l2.27-23.75L445,604.76l7.51,15.57a4.66,4.66,0,0,0,3.42,2.57,5.14,5.14,0,0,0,.78.07A4.63,4.63,0,0,0,460,621.6l14.26-14.26,14.44,48.48-36.4,12.92Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M444.59,606.32l7,14.45a5.71,5.71,0,0,0,4.15,3.12,6,6,0,0,0,1,.08,5.58,5.58,0,0,0,4-1.66l13.08-13.08,13.69,46-35.24,12.5-47.49-9.21,2.13-22.41,37.77-29.76m.72-3.12L404.91,635l-2.39,25.08,49.81,9.66,37.55-13.32-15.19-51L459.24,620.9a3.65,3.65,0,0,1-2.58,1.07,4.32,4.32,0,0,1-.62-.05,3.64,3.64,0,0,1-2.67-2Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=8" class="district">
						  <g data-dist="8">
						    <path class="cls-2" d="M332.83,880l-47.71,4-2.58-27.13c.36-1.36,2.75-10.46,4.79-21.2l54.89-17.56a4.64,4.64,0,0,0,3-3l21.17-64.74,24.72,13.49a4.64,4.64,0,0,0,4.74-.17L481.23,709l90.17-13.26,28,1.23-2.77,25.39C569.76,730,508,747.8,499.32,752.13c-10.07,5-88.91,56.37-96,66.33-6.38,8.93-32.5,64.46-36.09,72.11Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M571.45,696.73l26.88,1.18-2.58,23.67c-27.27,7.76-88.2,25.32-96.88,29.66-10.1,5-89.22,56.61-96.38,66.63-6.25,8.75-31.09,61.43-35.82,71.49l-33.36-10.27-.37-.11-.39,0L286,882.89l-2.48-26c.48-1.82,2.7-10.38,4.66-20.51L342.53,819a5.68,5.68,0,0,0,3.65-3.62L367,751.82l23.67,12.91a5.71,5.71,0,0,0,2.71.69,5.61,5.61,0,0,0,3.05-.9L481.58,710l89.87-13.22m-.1-2L480.87,708l-85.56,54.81a3.63,3.63,0,0,1-3.72.13l-25.78-14.06-21.54,65.88a3.65,3.65,0,0,1-2.36,2.34l-55.45,17.74c-2.25,12-4.93,21.89-4.93,21.89l2.69,28.29,48.5-4,35,10.77s29.64-63.31,36.38-72.74,84.87-60.62,95.64-66c8.8-4.4,74.1-23.15,97.83-29.9l3-27.12Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					<a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=7" class="district">
					  <g data-dist="7">
					    <path class="cls-2" d="M766,868.22c-12.72,0-26-1.36-28.57-1.63l-39-55.14-99.21-32.17,8.18-60-1.12.31,2.52-22.26,84.76,3.73h.2a4.64,4.64,0,0,0,4.34-3l12.12-31a4.59,4.59,0,0,0,.32-1.71c11.42-2.68,36.26-9.28,40.67-17,4.81-8.41,10.5-41.11,11.92-49.58l52,53.31c-4.83,9.69-34.71,70.31-30.67,78.39,3.81,7.61,7.7,34.1,8,36-.31,4.57-5.31,81.18-1.3,94.55a2.68,2.68,0,0,1-.38,2.53c-1.28,1.72-6.2,4.6-24.76,4.6Z" transform="translate(-1.62 -0.21)"/>
					    <path d="M763.78,601l50.14,51.39c-2.16,4.38-9.51,19.34-16.41,34.84C792.7,698,789,707,786.61,713.84c-4.24,12-3.92,15.43-3,17.18,3.67,7.35,7.49,33,7.86,35.56-.37,5.54-5.29,81.35-1.25,94.79A1.71,1.71,0,0,1,790,863c-.94,1.26-5.15,4.19-24,4.19-12,0-24.62-1.22-28-1.58l-38.54-54.49-.39-.55-.63-.2-98.1-31.82L608.17,721l.41-3-1.15.33,2.25-19.86,83.82,3.68h.25a5.63,5.63,0,0,0,5.27-3.59l12.12-31a6.27,6.27,0,0,0,.34-1.27c14-3.3,36.21-9.64,40.59-17.31,4.57-8,9.88-37.26,11.71-48m-1.32-4.22s-6.74,41.76-12.13,51.19c-4.39,7.68-31.13,14.47-40.89,16.72a3.6,3.6,0,0,1-.16,2.12l-12.13,31a3.66,3.66,0,0,1-3.4,2.32h-.16l-85.69-3.77L605.11,721l1.08-.3L598.1,780l99.69,32.33,39.07,55.23s14.82,1.69,29.13,1.69,28.12-1.68,26.1-8.42c-4-13.47,1.35-94.3,1.35-94.3s-4-28.29-8.08-36.37,31-78.14,31-78.14Z" transform="translate(-1.62 -0.21)"/>
					  </g>
					</a>
					<a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=2" class="district">
					  <g data-dist="2">
					    <path class="cls-2" d="M840.08,715.77l-38,8-5.85-7.2c1.76-6.16,19.47-46.26,28.84-67.16l.29-.64-71.32-68.54-.09,2.22c0,.19-.87,20-3.61,33.23-.43,2.07-.79,4.21-1.14,6.28-2,11.79-3.87,22.93-17.76,28.06-6.55,2.41-13.53,4.65-20.2,4.65-9.34,0-18.16-4.26-29.47-14.23-20.6-18.16-20.19-28-17.66-38.08,1.62-6.45,12.85-20.19,33.39-40.83.82-.82,1.4-1.4,1.68-1.7,2.06-2.16,25.18-19.65,37.11-28.6l.76-.56-.52-.79c-.12-.18-11.86-18-18.54-33.07-3.44-7.77-5-12.4-3.61-14.59,1-1.58,3.91-2.28,9.37-2.28,1,0,2.12,0,3.3.07a144.29,144.29,0,0,1,23.79,2.93,120.06,120.06,0,0,0,25.19,2.68c4.54,0,9.43-.22,14.95-.67,18-1.46,26.21-9,30-15.09a26,26,0,0,0,3.86-12.13l12.23-.78.85,0a13.28,13.28,0,0,1,12.35,8.54l3.39,9,9.66,10.18,15.48-6,22-2.16,16.64,67.35,19.16-1,1.4,19.62-14.25,11.87,21.31,13.22,30.49-1.27,39.07,17.83-27.28,53.56-103,48.75-19.51,20.74Z" transform="translate(-1.62 -0.21)"/>
					    <path d="M837.94,457.91h0a12.26,12.26,0,0,1,11.41,7.89l3.33,8.79.14.38.28.29,9,9.56.92,1,1.25-.48,14.73-5.69,21-2.06,16.24,65.71.39,1.6,1.65-.08,17.35-.89L937,562l-12.8,10.66-2.13,1.77,2.36,1.46,19.87,12.33.52.32.61,0,30-1.25,37.9,17.3-26.66,52.32L884.12,705.45l-.34.16-.26.28L864.64,726,840.8,715l-.6-.28-.65.14-37,7.79-5.13-6.31c2.24-6.93,18-42.85,28.64-66.53l.58-1.28-1-1L756.39,581l-3.2-3.08-.19,4.43c0,.2-.86,19.91-3.59,33.08-.43,2.08-.79,4.23-1.14,6.31-1.94,11.5-3.78,22.37-17.13,27.29-6.46,2.39-13.33,4.59-19.85,4.59-9.08,0-17.69-4.18-28.81-14-20.18-17.79-19.8-27.32-17.35-37.08,1.08-4.32,7.71-14.83,33.13-40.38l1.69-1.7c1.87-2,23.15-18.12,37-28.5l1.51-1.13-1-1.57c-.12-.18-11.81-17.91-18.46-32.92-2.57-5.82-5-11.66-3.68-13.65.79-1.22,3.58-1.82,8.53-1.82,1,0,2.05,0,3.26.07a144,144,0,0,1,23.64,2.91,120.9,120.9,0,0,0,25.38,2.7c4.57,0,9.48-.22,15-.67,10.14-.83,23.71-4.2,30.74-15.56a27.19,27.19,0,0,0,3.94-11.72l11.37-.72.78,0m0-2c-.3,0-.61,0-.91,0l-13.16.84s1,24.4-32.92,27.16c-5.74.47-10.61.67-14.87.67-20.92,0-27-4.77-48.94-5.61-1.2,0-2.31-.07-3.34-.07-13.3,0-13,4-6.68,18.28,6.79,15.34,18.62,33.21,18.62,33.21s-34.57,25.92-37.24,28.71S666,591,663.19,602.11s-2.29,21.21,18,39.07c12,10.56,20.92,14.48,30.13,14.48,6.36,0,12.84-1.87,20.55-4.71,17-6.28,16.74-21.6,19.53-35.08S755,582.48,755,582.48L824.21,649s-27.91,62.24-29,67.82l6.55,8.05L840,716.81l25.15,11.57L885,707.26l103.1-48.82L1016,603.65l-40.24-18.37-30.43,1.27-19.87-12.33L939,562.91l-1.5-21.11-19.31,1L901.57,475.4l-23,2.26-15,5.78-9.05-9.56-3.33-8.79a14.21,14.21,0,0,0-13.28-9.18" transform="translate(-1.62 -0.21)"/>
					  </g>
					</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=9" class="district">
						  <g data-dist="9">
						    <path class="cls-2" d="M481.69,599.85l33.44-33.43,44.65,30.92L532.92,623a4.68,4.68,0,0,0-.57,6.07l9.47,13.26-44.25,10.8Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M515.24,567.72l43,29.74-26,24.85a5.67,5.67,0,0,0-.69,7.37l8.61,12.06L498.26,652l-15.44-51.82,32.42-32.42m-.23-2.6-34.44,34.45,16.31,54.78L543.5,643l-10.34-14.47a3.66,3.66,0,0,1,.45-4.76l27.75-26.55Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=" class="district">
						  <g data-dist="4">
						    <path class="cls-2" d="M580.84,686.83l8.33-9.85,68.5-50c10.52,15.76,33.46,30.79,43.78,37l-10.82,27.64Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M657.43,628.38c4.54,6.44,16.22,19.86,42.78,36L690,690.62l-107-4.7,6.94-8.21,67.57-49.33m.5-2.84-69.44,50.7-9.73,11.5,112.54,4.94,11.17-28.55a5,5,0,0,1,.27-.51c-8.89-5.34-34.27-21.51-44.81-38.08" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=3" class="district">
						  <g data-dist="3">
						    <path class="cls-2" d="M542.27,627l28.07-26.85a4.66,4.66,0,0,0-.57-7.19l-43.91-30.4,30.19-7,.32-.09L577,549.07l39.46,30.43-66,58.83Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M576.76,550.17l38.09,29.39-64.3,57.29-7-9.75L571,600.84a5.65,5.65,0,0,0-.69-8.73L528.28,563l28-6.53.38-.1,20.1-6.19m.4-2.21-21.09,6.49-.24.06-32.4,7.56,45.77,31.69a3.66,3.66,0,0,1,.45,5.64L541,626.85l9.27,13L618,579.45Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=17" class="district">
						  <g data-dist="17">
						    <path class="cls-2" d="M289.08,825.31c2.26-15.54,1.8-25.55-1.37-29.77-7.92-10.57-123-56.17-134.41-60.66,5-33.87,17.87-119.93,20-124.2,1.31-2.62,21.5-11.16,36.23-17.39,17.24-7.29,27.05-11.51,28.37-13.49,2.74-4.1-10.35-107-13.23-129.39L259,428l32.54-4.06,1.71-2.41L338.06,449l-32.47,25.51a4.67,4.67,0,0,0-1.5,5.25l55,151.46v111.6l-21.93,67.08Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M293.5,422.85l42.81,26.29L305,473.76a5.66,5.66,0,0,0-1.83,6.38l54.9,151.29V742.7l-21.72,66.45-46,14.72c2.07-15.1,1.48-24.58-1.79-28.93-1.32-1.78-5.37-7.17-71.2-35-28.36-12-56.27-23.08-62.9-25.7,7-47.68,17.81-118.59,19.77-123.09,1.9-2.63,22.26-11.24,35.74-16.94,19.79-8.37,27.4-11.73,28.81-13.86.79-1.17,2.1-3.13-5.4-67.51-3.25-27.93-6.8-55.79-7.59-61.93l33.59-22,31.87-4,.87-.11.51-.71.92-1.29m-.54-2.68L291,423l-32.33,4-35,22.9s16.16,125.28,13.47,129.33-62,25.59-64.66,31S152.2,735.51,152.2,735.51s126.63,49.85,134.72,60.63c3.67,4.9,2.89,17.9.94,30.62l50.05-16L360.05,743V656.34h0V631.08L305,479.46a3.66,3.66,0,0,1,1.18-4.12l33.6-26.4Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=11" class="district">
						  <g data-dist="11">
						    <path class="cls-2" d="M298.65,413.92l33.83-47.35-18.87-58c5.37-8.57,71.57-114,73.9-119.61,2.58-2.34,36.79-4.92,67.84-6.16h.09l.09,0c.72-.16,17.71-4.1,27.12-8.14,2.18-.93,6.32-2.77,11.56-5.11,14.85-6.62,45.77-20.4,48.66-20.4l54.45,1.33,6.47,25.89-18.91,47.29.22.41c.24.42,23.49,42.24,58.45,55.69,16.43,6.32,26.93,14.83,31.22,25.3a29,29,0,0,1-.79,23.19c-1.81,4-5.45,6-10.81,6-9.6,0-21.36-6.39-21.47-6.46l-.48-.26-.48.26c-1.25.68-30.37,16.82-22,35,1.86,4,6.14,11.07,12.4,20.39l-21.63,17.43-24.61-61.52a4.61,4.61,0,0,0-3-2.74L456.61,300a4.88,4.88,0,0,0-1.31-.19,4.67,4.67,0,0,0-4,2.25l-57.6,95.11-48.15,45.61Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M542.89,150.16l53.64,1.31,6.21,24.84-18.62,46.55-.35.87.46.83a159,159,0,0,0,16,22.88c9.37,11.25,24.43,26.15,42.92,33.26,16.16,6.22,26.48,14.54,30.65,24.74a27.82,27.82,0,0,1-.77,22.41c-1.65,3.64-4.89,5.41-9.9,5.41-9.34,0-20.88-6.27-21-6.34l-1-.52-1,.52c-1.28.7-31.18,17.28-22.42,36.27,1.86,4,5.88,10.67,12,19.76l-19.87,16-24.1-60.26a5.62,5.62,0,0,0-3.67-3.33L456.89,299a5.63,5.63,0,0,0-6.42,2.5l-57.53,95-47.49,45-45.36-27.86L333,367.56l.59-.82-.32-1-18.57-57c12.89-20.53,69.39-110.62,73.58-119,4-2.15,37-4.66,67.11-5.86h.19l.18,0c.72-.17,17.79-4.13,27.28-8.2,2.19-.93,6.32-2.78,11.56-5.11,14.57-6.49,44.83-20,48.29-20.32m0-2c-4,0-51.19,21.55-60.62,25.6s-26.94,8.08-26.94,8.08-67.36,2.69-68.71,6.73-74.09,119.9-74.09,119.9l18.86,57.93-34.15,47.81L345.71,444l48.8-46.23,57.67-95.22a3.63,3.63,0,0,1,4.15-1.62l125.28,36.37a3.69,3.69,0,0,1,2.38,2.15l25.1,62.77,23.4-18.85c-6-9-10.8-16.6-12.83-21-8.08-17.52,21.55-33.68,21.55-33.68s12,6.58,22,6.58c5,0,9.48-1.64,11.72-6.58,6.74-14.82,4-36.38-31-49.85S586,223.6,586,223.6l18.86-47.15-6.73-26.94Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=1" class="district">
						  <g data-dist="1">
						    <path class="cls-3" d="M566.22,636.69l60.58-54a4.66,4.66,0,0,0-.26-7.16l-38.69-29.84,19.83-6.11,47.84,11.64,24.06,15.52c-11.73,11.87-25.61,28.72-27.24,43.35a19.82,19.82,0,0,0,1.06,8.44L587.1,667Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M607.71,540.65l47.41,11.53L678,567c-11.65,11.92-25,28.51-26.65,43.06a20.24,20.24,0,0,0,.88,8.17l-64.89,47.38-19.8-28.71,59.92-53.38a5.65,5.65,0,0,0-.31-8.7L590,546.1l17.72-5.45m-.06-2.07-21.94,6.75,40.22,31a3.65,3.65,0,0,1,.2,5.62l-61.24,54.56,22,31.85,67.73-49.45a19.06,19.06,0,0,1-1.25-8.7c1.66-14.93,16.58-32.4,27.82-43.63l-25.24-16.28Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=16" class="district">
						  <g data-dist="16">
						    <path class="cls-2" d="M659.9,543a4.7,4.7,0,0,0-1.42-.61L611,530.84l-8.55-22a4.51,4.51,0,0,0-1.36-1.89l-30-25L579,456.24l44.9-15.39a4.65,4.65,0,0,0,2.62-6.56l-13.05-24.91,23-18.51c12.17,17.51,42.44,58.7,46.56,58.7,1.8,0,11.28-5.71,35.92-20.84,24.84-15.25,55.76-34.23,62.63-35.76a2.73,2.73,0,0,1,.64-.07c4.7,0,13.36,9.62,21.05,23.39,9.27,16.58,16.63,38.65,10.92,47.92-7.17,11.66-25.84,13.4-36.33,13.4-5,0-8.47-.39-8.5-.39-.3-.05-34.48-5.71-53.36-5.71-6.21,0-10.13.59-12,1.83-8.22,5.48,14.92,45.86,20.8,55.82l-31.65,25.05s-2.75,2.27-6.69,5.92Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M636.21,392.32c8.59,12.33,18.85,26.29,27.73,37.69,16,20.56,17.76,20.56,19,20.56,2,0,9.13-4.22,36.44-21,23.48-14.41,55.62-34.14,62.33-35.64a2.72,2.72,0,0,1,.42,0c3.68,0,11.8,7.87,20.2,22.91,9.11,16.32,16.42,37.95,10.92,46.88-6.92,11.24-25.2,12.92-35.49,12.92-4.61,0-7.91-.34-8.33-.38-2.05-.34-34.76-5.72-53.52-5.72-8.54,0-11.24,1.14-12.53,2-3,2-5,7.51,7.06,32.18,5.07,10.41,10.83,20.5,13,24.23l-31,24.54c-.11.09-2.51,2.07-6.15,5.42l-25.89-16.71a5.71,5.71,0,0,0-1.72-.74l-47-11.43-8.37-21.5a5.53,5.53,0,0,0-1.65-2.29l-29.45-24.54,7.5-24.63,44.42-15.23a5.65,5.65,0,0,0,3.17-8L614.7,409.65l21.51-17.33m.42-2.91-24.47,19.71,13.43,25.63a3.69,3.69,0,0,1,.16,3.05,3.64,3.64,0,0,1-2.21,2.1l-45.39,15.56L570,482.34l30.47,25.4a3.51,3.51,0,0,1,1.07,1.48l8.74,22.47,48,11.67a3.72,3.72,0,0,1,1.12.48l27.19,17.55c4.28-4,7.2-6.39,7.2-6.39l32.33-25.6s-29.63-49.84-21.55-55.23c1.8-1.2,6-1.66,11.42-1.66,19,0,53.24,5.7,53.24,5.7a83.89,83.89,0,0,0,8.61.4c11.1,0,29.82-1.89,37.2-13.87,10.53-17.12-20.12-72.83-32.83-72.84a4,4,0,0,0-.85.09c-12.13,2.7-94.3,56.58-98.34,56.58-2.81,0-28.3-33.06-46.35-59.16" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=14" class="district">
						  <g data-dist="14">
						    <path class="cls-2" d="M368.36,652.46v-22a4.8,4.8,0,0,0-.28-1.59L314,479.79l35.13-27.6.12-.12.05,0,.1-.08,15-14.22,76.41,158.44-42.27,33.31a4.67,4.67,0,0,0-1.75,3.21l-2.36,24.83Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M364.09,439.4l75.47,156.48-41.63,32.81a5.64,5.64,0,0,0-2.13,3.91l-2.26,23.72-24.18-4.69V630.44a5.77,5.77,0,0,0-.34-1.93L315.18,480.13,349.68,453l.2-.18.2-.16,14-13.28m.62-3.34-16,15.16-.13.11-.12.12-35.64,28,54.33,149.74a3.78,3.78,0,0,1,.22,1.25v22.84l28,5.43,2.47-25.92a3.65,3.65,0,0,1,1.37-2.53l42.9-33.8Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=6" class="district">
						  <g data-dist="6">
						    <polygon class="cls-2" points="366.74 740.62 366.74 661.73 448.54 677.6 470.89 703.31 391.53 754.15 366.74 740.62"/>
						    <path d="M369.36,663.15l80.27,15.57L471,703.3l-77.89,49.9-23.75-13Zm-2-2.43v80.71l25.83,14.09L474,703.74l-23.34-26.85Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=" class="district">
						  <g data-dist="5">
						    <path class="cls-2" d="M460.61,675.65l35.09-12.46,55.1-13.43.15-.07a3.09,3.09,0,0,0,.66-.25l.25-.12a4.28,4.28,0,0,0,.78-.54l0,0,.07-.06,6.47-5.77,20.92,30.33-11.38,13.45L481.4,699.56Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M559,644.43l19.84,28.77-10.64,12.58-86.44,12.71L462.33,676.1l33.66-12,55-13.4.3-.1a6.46,6.46,0,0,0,.81-.32l.28-.14a5.83,5.83,0,0,0,.91-.62l0,0,.08-.07,5.66-5.05m.36-3L552,648h0a3.15,3.15,0,0,1-.65.45l-.2.1a4.07,4.07,0,0,1-.58.22l-.13,0-55.05,13.42-36.53,13L481,700.62l88.27-13,12.12-14.33Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=15" class="district">
						  <g data-dist="15">
						    <path class="cls-2" d="M536.3,474.61l26.94,12.93,31,25.81,7.18,18.46-23.85,7.34a4.74,4.74,0,0,0-2.23.69l-21.55,6.63-33.2,7.75Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M537,476.07l25.66,12.32L593.37,514l6.69,17.22-22.71,7a5.62,5.62,0,0,0-2.46.76l-21.37,6.57-31.69,7.4L537,476.07m-1.46-2.92-16.31,82.39L554,547.43l21.69-6.68a3.64,3.64,0,0,1,2-.6l25-7.7L595,512.74l-31.26-26.05Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=12" class="district">
						  <g data-dist="12">
						    <path class="cls-2" d="M538.17,465.19l6.59-33.3v-.16a3.83,3.83,0,0,0,.05-.6,1.31,1.31,0,0,0,0-.28,4.32,4.32,0,0,0,0-.57c0-.12,0-.23-.08-.35a3.68,3.68,0,0,0-.15-.47,3.24,3.24,0,0,0-.13-.33,3.88,3.88,0,0,0-.24-.45l-.17-.27a3.38,3.38,0,0,0-.37-.46,1.72,1.72,0,0,0-.17-.19,3.66,3.66,0,0,0-.65-.54,1.17,1.17,0,0,0-.2-.12,4.37,4.37,0,0,0-.49-.27L450.5,385.07a4.6,4.6,0,0,0-1.93-.42,4.66,4.66,0,0,0-3.72,1.86L427,410.29l-23.08-12.05,53.51-88.35,119.68,34.75L603.25,410l.08.14a1,1,0,0,0,.08.21l12.31,23.49-42,14.4a4.73,4.73,0,0,0-2.94,3.05l-7.85,25.8Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M457.9,311.07l118.47,34.39,25.92,64.8a1.47,1.47,0,0,0,.12.25,1.59,1.59,0,0,0,.12.27l11.76,22.46-40.92,14a5.63,5.63,0,0,0-3.57,3.7l-7.52,24.68-23-11,6.42-32.46a1.88,1.88,0,0,0,0-.33,6,6,0,0,0,.05-.68,3,3,0,0,0,0-.41,4,4,0,0,0-.07-.63,2.84,2.84,0,0,0-.09-.42,5.58,5.58,0,0,0-.18-.58c-.05-.13-.1-.26-.16-.39a5.57,5.57,0,0,0-.32-.6,2.29,2.29,0,0,0-.18-.29,3.89,3.89,0,0,0-.44-.54,2.57,2.57,0,0,0-.21-.24,5.42,5.42,0,0,0-.79-.66l-.29-.17h0a3.94,3.94,0,0,0-.53-.29l-91.6-41.77a5.73,5.73,0,0,0-2.35-.5,5.66,5.66,0,0,0-4.52,2.26L426.72,409l-21.38-11.16,52.56-86.78m-.92-2.35-54.46,89.92,24.78,12.93,18.35-24.46a3.63,3.63,0,0,1,2.92-1.46,3.71,3.71,0,0,1,1.52.32l91.6,41.77a2.32,2.32,0,0,1,.38.21,1.51,1.51,0,0,1,.17.1,3.35,3.35,0,0,1,.51.42s.08.1.13.15a3.51,3.51,0,0,1,.29.36,1.48,1.48,0,0,1,.13.21c.07.12.14.23.2.36a2.6,2.6,0,0,0,.1.25c0,.12.08.25.11.38l.06.27a2.71,2.71,0,0,1,0,.41,1.11,1.11,0,0,1,0,.26,3.88,3.88,0,0,1,0,.48c0,.06,0,.11,0,.17l-6.72,34,26.48,12.71,8.19-26.91a3.65,3.65,0,0,1,2.31-2.39l43.12-14.79L604.3,409.85c0-.06,0-.13-.08-.19s-.06-.09-.08-.14l-26.28-65.71Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=13" class="district">
					  	<g data-dist="13">
						    <path class="cls-2" d="M371.49,431l26.68-25.27,28,14.63a4.78,4.78,0,0,0,2.15.53,4.67,4.67,0,0,0,3.73-1.87l18-23.94,84.77,38.64-7.27,32.69c-.19.89-16,85-17.26,91.68L458,610.39Z" transform="translate(-1.62 -0.21)"/>
						    <path d="M450.37,396.33l83.3,38-7.09,31.91c-.2.88-15,79.61-17.22,91.4l-51.07,51.07L372.71,431.24,398.34,407l27.41,14.31a5.82,5.82,0,0,0,2.61.64,5.67,5.67,0,0,0,4.53-2.27l17.48-23.3m-.64-2.49-18.44,24.59a3.66,3.66,0,0,1-2.93,1.47,3.61,3.61,0,0,1-1.68-.42l-28.68-15-27.73,26.27,87.44,181.3,53.5-53.5s17.12-91.05,17.32-92L536,433.16Z" transform="translate(-1.62 -0.21)"/>
						  </g>
						</a>
					  <g>
					    <path class="cls-4" d="M263.69,299a24.46,24.46,0,0,1-7.17.6,8.28,8.28,0,0,1-6.1-3.4,12.1,12.1,0,0,1-1.36-3.76q-1.14-4.62-2.26-9.24a1.46,1.46,0,0,1,0-1c.42-.85,1.71-.2,2.35.52l4.49,5.08a2.73,2.73,0,0,0,2,1.22c1.09-.06,1.65-1.32,1.88-2.39a20.72,20.72,0,0,0,.49-4.15,13.28,13.28,0,0,1,.46-4.59c.56-1.45,2.12-2.66,3.6-2.2,3.24,1,1,6.86,3.65,8.94l6.72-10.45a63.55,63.55,0,0,1,2.45,12.06l5.35-5.91c1-1.1,2.6-2.27,3.77-1.37s.53,2.59-.13,3.81l-2.76,5.12a2.07,2.07,0,0,0-.35,1.58c.33,1,1.75.88,2.69.47s2.15-.9,2.9-.2a19.79,19.79,0,0,1-21.91,10.19" transform="translate(-1.62 -0.21)"/>
					    <g>
					      <path class="cls-5" d="M2.62,847.13A11.37,11.37,0,0,1,7,853.86" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M7.34,840.83a17.84,17.84,0,0,1,6.87,14.56" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M18.44,842.33a24.08,24.08,0,0,1,1.83,11.06" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-7">
					          <path class="cls-8" d="M747.93,763.27a16.68,16.68,0,0,1,5.19,10.91" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M754.5,759.69a30.69,30.69,0,0,1,3.32,13" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M759.55,758.16A16.72,16.72,0,0,1,762,768.69" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M769.13,757.21q-.89,5.73-1.76,11.46" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M773.65,760.24a41.84,41.84,0,0,0-1.74,8.94" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-9" d="M689.75,611.53c.43,1.52.87,3,1.3,4.56" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M692.73,608.52a10.72,10.72,0,0,1,2,6.52" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M700.12,609.05c.17,1.83.34,3.67.5,5.5" transform="translate(-1.62 -0.21)"/>

					      <g class="cls-6">
					        <g class="cls-11">
					          <path class="cls-8" d="M402.36,575.45A32.07,32.07,0,0,0,403,587" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-14">
					          <path class="cls-8" d="M559.84,561.6a32.3,32.3,0,0,0,.68,11.55" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-16">
					          <path class="cls-8" d="M454.2,456.81c.76,3.15,1.52,6.29,2.27,9.44" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M460.76,455.8a25.46,25.46,0,0,0,2,7" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M465.73,457.31a7.58,7.58,0,0,1,.62,6.53" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-17">
					          <line class="cls-8" x1="353.69" y1="470.15" balloon="353.69" y2="476.15"/>
					          <path class="cls-8" d="M361.25,470.85l-1.05,5" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M366.48,471.91c-.38,1.49-.77,3-1.15,4.46" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-19">
					          <path class="cls-8" d="M349.25,374.11a19.09,19.09,0,0,1,3.92,5.73" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M351.85,368a34.81,34.81,0,0,1,6.9,10.3" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M360.89,370a18.91,18.91,0,0,1,3,6" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-5" d="M665.78,225.27a12.43,12.43,0,0,1,.5,4.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M673.74,222.27a25.29,25.29,0,0,1-.32,7.52" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-21">
					          <path class="cls-8" d="M425.07,642.14a37.32,37.32,0,0,1-2.95,11" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M428.06,648.14a18.58,18.58,0,0,1-2,7.51" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-22">
					          <path class="cls-8" d="M542.36,532a37.71,37.71,0,0,1-3,11" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M545.35,538a18.74,18.74,0,0,1-2,7.52" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-5" d="M591.52,855.39a37.39,37.39,0,0,1-2.95,11" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M594.51,861.39a18.57,18.57,0,0,1-2,7.52" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-23">
					          <path class="cls-8" d="M601.65,631.39a15,15,0,0,0,.44,6" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M607.65,626.38q.81,5.75,1.61,11.48" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M615.12,631.38c-.17,1-.33,2-.5,3" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-24">
					          <path class="cls-8" d="M636.39,510.27a13.91,13.91,0,0,1-1.52,5.5" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M644.91,507.78a56.54,56.54,0,0,0-3.34,10.93" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M649.87,514.27l-3.56,6.46" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-25">
					          <path class="cls-8" d="M471.88,331.36a13.82,13.82,0,0,1-1.52,5.49" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M480.4,328.87a56.54,56.54,0,0,0-3.34,10.93" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M485.36,335.35c-1.19,2.16-2.37,4.32-3.56,6.47" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-26">
					          <path class="cls-8" d="M406.83,211.81a13.91,13.91,0,0,1-1.52,5.5" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M415.35,209.32A57.25,57.25,0,0,0,412,220.25" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M420.31,215.8c-1.19,2.16-2.37,4.32-3.56,6.47" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-5" d="M192.22,821.11a11.15,11.15,0,0,1-.44,5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M198.19,819.1c-.35,2.66-.71,5.32-1.06,8" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M203.25,823.1c-.17,1.67-.34,3.34-.5,5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M94.85,707.55a16.71,16.71,0,0,0,2.37,6.58" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M102.3,704.06q1.26,3.75,2.5,7.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M109.35,702.55q1,3.75,2,7.5" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-27">
					          <path class="cls-8" d="M767.74,658.14a10.73,10.73,0,0,0,2.37,6.56" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M773.65,653.14a24.11,24.11,0,0,0,1.46,8.53" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M780.72,653.64a24,24,0,0,0,.39,7.52" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-28">
					          <path class="cls-8" d="M247.58,458.52a10.73,10.73,0,0,0,2.37,6.56" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M253.5,453.52a24.1,24.1,0,0,0,1.45,8.53" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M260.56,454a24,24,0,0,0,.4,7.51" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-29">
					          <path class="cls-8" d="M657.1,765.69a5.93,5.93,0,0,0,1.11,4.2" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M663,760.19a45.33,45.33,0,0,1,1.06,9" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M672,763.68c.18,1.66.35,3.33.53,5" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-30">
					          <path class="cls-8" d="M651.8,446c0,1.37,0,2.74,0,4.11,0,.36,0,.79.34,1s.81-.27.52-.49" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M658.37,440.52a17.62,17.62,0,0,0,.76,8.55" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M664.81,446a12.91,12.91,0,0,0-.5,4.5" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-31">
					          <path class="cls-8" d="M539.11,672c0,1.37,0,2.75,0,4.12a1.1,1.1,0,0,0,.34,1c.31.19.81-.26.52-.49" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M545.68,666.55a17.5,17.5,0,0,0,.76,8.55" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M552.12,672a12.43,12.43,0,0,0-.5,4.5" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-32">
					          <path class="cls-8" d="M377.05,803.11a41.22,41.22,0,0,0-.26,20.49" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M383.06,804.13a136.43,136.43,0,0,0-.4,17.51" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M390,806.11l-2.94,16.51" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-33">
					          <path class="cls-8" d="M781.09,426a41.06,41.06,0,0,0-.26,20.48" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M787.1,427.05a136.43,136.43,0,0,0-.4,17.51" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M794,429q-1.47,8.27-2.95,16.51" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-34">
					          <path class="cls-8" d="M305.64,574.24a41.06,41.06,0,0,0-.25,20.48" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M311.65,575.25a134.64,134.64,0,0,0-.39,17.51" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M318.59,577.23l-2.94,16.51" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-5" d="M879,769.17q.63,5.75,1.25,11.48" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M886.06,772.66c-.17,1.83-.34,3.67-.5,5.5" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-35">
					          <path class="cls-8" d="M304.31,768.68q.62,5.73,1.24,11.47" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M311.4,772.16c-.16,1.83-.33,3.67-.5,5.5" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-36">
					          <path class="cls-8" d="M436.33,695.1q.62,5.74,1.24,11.48" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M443.42,698.59c-.17,1.83-.33,3.67-.5,5.5" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-9" d="M677.42,838.59a15,15,0,0,0-1.76,4.95" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M684.92,834.08l-2.88,12" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M689.89,842.08l-1.5,5.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M760.58,315.15a37.32,37.32,0,0,1-3,11" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M763.58,321.14a18.74,18.74,0,0,1-2,7.52" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M860.61,354.54a14.82,14.82,0,0,0,.43,6" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M866.61,349.53q.79,5.75,1.61,11.48" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M874.07,354.53c-.16,1-.33,2-.5,3" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M775.82,542a11,11,0,0,1-.44,5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M781.79,540q-.52,4-1.06,8" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M786.85,544c-.17,1.67-.34,3.34-.5,5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M861,612a16.51,16.51,0,0,0,2.37,6.57" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M868.48,608.52,871,616" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M875.52,607q1,3.75,2,7.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M979.41,678.34a15,15,0,0,0-1.76,4.95" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M986.91,673.83l-2.88,12" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M991.88,681.83l-1.5,5.5" transform="translate(-1.62 -0.21)"/>
					      <g class="cls-6">
					        <g class="cls-37">
					          <path class="cls-8" d="M548.9,240.53a90.26,90.26,0,0,1,3.21,20.07" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M554.48,239.13a107.28,107.28,0,0,1,2.27,20" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M560.54,240.61a145.69,145.69,0,0,1,.91,21" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <g class="cls-6">
					        <g class="cls-38">
					          <path class="cls-8" d="M673.84,662a90.26,90.26,0,0,1,3.21,20.07" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M679.42,660.62a107.28,107.28,0,0,1,2.27,20" transform="translate(-1.62 -0.21)"/>
					          <path class="cls-8" d="M685.48,662.1a145.69,145.69,0,0,1,.91,21" transform="translate(-1.62 -0.21)"/>
					        </g>
					      </g>
					      <path class="cls-5" d="M131.84,436.46a19.21,19.21,0,0,1,3.92,5.73" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M134.44,430.36a34.93,34.93,0,0,1,6.9,10.3" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M143.49,432.32a18.89,18.89,0,0,1,3,6" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M113.49,609.82a13.91,13.91,0,0,1-1.52,5.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M122,607.33a56.54,56.54,0,0,0-3.34,10.93" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M127,613.81l-3.55,6.47" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M557,759.44a13.87,13.87,0,0,1-1.52,5.49" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M565.52,757a57.15,57.15,0,0,0-3.34,10.92" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M570.48,763.43l-3.56,6.47" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M241.28,367.13a90.35,90.35,0,0,1,3.21,20.07" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M246.86,365.74a107.07,107.07,0,0,1,2.26,20" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M252.92,367.21a145.89,145.89,0,0,1,.9,21" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M437.43,873.59a46.3,46.3,0,0,1,8.33-24.93,2.12,2.12,0,0,1,.81-.79c.87-.36,1.78.58,2,1.51a7,7,0,0,1-.47,3.46l-2.74,8.71,5.19-11.67c.38-.86,1-2.45,1.84-2,3,1.77-.34,6.79-1.64,10a66.85,66.85,0,0,0-3,9.27q3.18-8,6.66-15.79c.25-.58.66-1.26,1.3-1.22.94.07.94,1.45.65,2.35l-4.16,12.83c1-1.88,2-3.77,3-5.66a29.72,29.72,0,0,1,3.87-6,2.2,2.2,0,0,1,1.68-.93,1.6,1.6,0,0,1,1.3,1.53,4.65,4.65,0,0,1-.48,2.11q-2.2,5.53-4.42,11.07l6.24-10.92a1.89,1.89,0,0,1,.62-.75c.68-.41,1.61.23,1.79,1a3.81,3.81,0,0,1-.43,2.32l-6.24,15.11a1.14,1.14,0,0,1-.35.55,1.23,1.23,0,0,1-.85.13C451,874.4,444.42,873.27,437.43,873.59Z" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M676.23,380.73c-.48-3.44-1-8-1.51-11.42a1.79,1.79,0,0,1,.33-1.65,1.16,1.16,0,0,1,1.37.06,2.84,2.84,0,0,1,.85,1.19,27.25,27.25,0,0,1,1.83,7.3q.06-3.75.11-7.5a3.54,3.54,0,0,1,.7-2.5,1,1,0,0,1,.78-.35c.6.05.89.74,1,1.32a43.34,43.34,0,0,1,1.22,8c.43-2.21.87-4.43,1.3-6.64.26-1.35.85-3,2.22-3.1a18.18,18.18,0,0,1-.09,8.3,13.78,13.78,0,0,1,2.93-5.51c.31-.29.78-.56,1.12-.31a.8.8,0,0,1,.26.43c.68,2.07-.49,4.22-1.35,6.21a22.21,22.21,0,0,0-1.62,6.09A93.56,93.56,0,0,1,676.23,380.73Z" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M160.44,916.3q3.33,9.29,6.67,18.56a2.62,2.62,0,0,0,.89,1.41,2.56,2.56,0,0,0,1.48.25l20.16-.53c-1.74-8.88,8.2-16.44,7.86-25.48L183.61,923.8a33.68,33.68,0,0,0-3.82-17.47L178,923.9c-6.44-4.78-4-16.16-10.17-21.23a117.83,117.83,0,0,0,4.61,20.23,56,56,0,0,0-11.15-14" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M835.61,741.81c.51,1.88,1,3.75,1.54,5.62a1.53,1.53,0,0,0,.39.77,1.51,1.51,0,0,0,1,.21l12.91-.65c.43-2.87.85-5.74,1.28-8.6.12-.83-.14-2.06-1-1.9-.57,1.51-1.14,3-1.72,4.52a1.28,1.28,0,0,1-.54.77c-.57.28-1.16-.36-1.39-1-1.06-2.77.1-6.55-2.22-8.39q-.55,3.81-1.09,7.62c-.08.51-.24,1.13-.74,1.27s-1.11-.55-1.36-1.15q-1.22-3-2.45-6a16.17,16.17,0,0,0,.8,8.49,23.79,23.79,0,0,0-5.53-6.62c-1,2.31,2.56,5.12,1.1,7.2" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M699.21,932.05l17.25,2.34a88.5,88.5,0,0,0,4.63-23.17A34.57,34.57,0,0,0,713,922.37l-4.39-17q-1.08,6.06-2.14,12.14c-.12.65-.34,1.42-1,1.6s-1.34-.54-1.73-1.18l-8.07-13.08A18.78,18.78,0,0,0,697,918.16a49,49,0,0,1-9.33-11A38.61,38.61,0,0,0,696.26,928" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M372.74,162.92a38.72,38.72,0,0,1,2,11.45c0,.2,0,.44.18.56a.67.67,0,0,0,.46.1l11.72-.18a1.12,1.12,0,0,0,.61-.14,1,1,0,0,0,.3-.51,91.92,91.92,0,0,0,4.32-18.3c.07-.5.06-1.13-.39-1.36s-1.09.3-1.38.83c-1.87,3.35-2,7.47-3.84,10.83-.05-2.8-.09-5.59-.13-8.39a2.51,2.51,0,0,0-.26-1.3.87.87,0,0,0-1.14-.37,1.24,1.24,0,0,0-.41.91c-.41,3.37.86,7.25-1.24,9.92q-1.35-4.16-2.68-8.33c-.16-.5-.49-1.12-1-1a1,1,0,0,0-.59.41c-1,1.28-.94,3.1-.67,4.71s.7,3.29.21,4.85q-.73-2.26-1.49-4.55a12.85,12.85,0,0,0-2.8-5.41,29.53,29.53,0,0,0-.53,6" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M989.09,893.55a40.93,40.93,0,0,1-11.28-18.79,2,2,0,0,1,0-1.67c.75-1.08,2.39,0,3.13,1.13l6.53,9.56a20.51,20.51,0,0,0,.21-9.09c-.28-1.39-.41-3.32.95-3.72,3,2.56,2,7.76,4.53,10.84a1.45,1.45,0,0,0,.94.62c.8.06,1.19-.95,1.33-1.74q1-5.62,2-11.26c3.24,1.8.93,7.39,3.36,10.18a1.64,1.64,0,0,0,1,.62c.73.08,1.31-.6,1.7-1.22a20.88,20.88,0,0,0,2.81-7,2.59,2.59,0,0,1,.79-1.72,1.64,1.64,0,0,1,2.19.69,4.28,4.28,0,0,1,.39,2.51c-.3,5.12-1.91,10.31-5.37,14.1s-9,5.88-13.91,4.44" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M263.69,299a24.46,24.46,0,0,1-7.17.6,8.28,8.28,0,0,1-6.1-3.4,12.1,12.1,0,0,1-1.36-3.76q-1.14-4.62-2.26-9.24a1.46,1.46,0,0,1,0-1c.42-.85,1.71-.2,2.35.52l4.49,5.08a2.73,2.73,0,0,0,2,1.22c1.09-.06,1.65-1.32,1.88-2.39a20.72,20.72,0,0,0,.49-4.15,13.28,13.28,0,0,1,.46-4.59c.56-1.45,2.12-2.66,3.6-2.2,3.24,1,1,6.86,3.65,8.94l6.72-10.45a63.55,63.55,0,0,1,2.45,12.06l5.35-5.91c1-1.1,2.6-2.27,3.77-1.37s.53,2.59-.13,3.81l-2.76,5.12a2.07,2.07,0,0,0-.35,1.58c.33,1,1.75.88,2.69.47s2.15-.9,2.9-.2a19.79,19.79,0,0,1-21.91,10.19" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-8" d="M955,522a24.46,24.46,0,0,1-7.17.59,8.25,8.25,0,0,1-6.1-3.4,12.23,12.23,0,0,1-1.37-3.75l-2.25-9.24a1.46,1.46,0,0,1,0-1c.42-.86,1.71-.2,2.34.51l4.5,5.09a2.77,2.77,0,0,0,2,1.22c1.09-.07,1.65-1.32,1.88-2.39a21.58,21.58,0,0,0,.49-4.16,13.06,13.06,0,0,1,.46-4.59c.56-1.44,2.12-2.65,3.6-2.2,3.24,1,1,6.87,3.65,8.95l6.72-10.46a63.63,63.63,0,0,1,2.44,12.07l5.36-5.92c1-1.09,2.6-2.27,3.76-1.36s.53,2.59-.12,3.81l-2.76,5.12a2.07,2.07,0,0,0-.35,1.58c.33,1,1.75.87,2.69.46s2.14-.89,2.9-.19a19.78,19.78,0,0,1-21.91,10.18" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M887.53,164a12.88,12.88,0,0,1,.5,4.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M895.48,161a25.28,25.28,0,0,1-.31,7.52" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M1070.76,523.88a37.24,37.24,0,0,1-3,11" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M1073.76,529.88a18.78,18.78,0,0,1-2,7.52" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M581.74,6.22a14.82,14.82,0,0,0,.43,6" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M587.74,1.21q.81,5.75,1.61,11.49" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M595.21,6.21c-.17,1-.34,2-.5,3" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M112.69,270.16a13.91,13.91,0,0,1-1.52,5.5" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M121.21,267.67a56.54,56.54,0,0,0-3.34,10.93" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-9" d="M126.17,274.15c-1.19,2.16-2.37,4.32-3.56,6.47" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M404.14,1030.5a11.4,11.4,0,0,1,4.35,6.73" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M408.86,1024.21a17.81,17.81,0,0,1,6.87,14.55" transform="translate(-1.62 -0.21)"/>
					      <path class="cls-5" d="M420,1025.7a24,24,0,0,1,1.82,11.07" transform="translate(-1.62 -0.21)"/>
					    </g>
					    <path class="cls-4" d="M437.43,873.59a46.3,46.3,0,0,1,8.33-24.93,2.12,2.12,0,0,1,.81-.79c.87-.36,1.78.58,2,1.51a7,7,0,0,1-.47,3.46l-2.74,8.71,5.19-11.67c.38-.86,1-2.45,1.84-2,3,1.77-.34,6.79-1.64,10a66.85,66.85,0,0,0-3,9.27q3.18-8,6.66-15.79c.25-.58.66-1.26,1.3-1.22.94.07.94,1.45.65,2.35l-4.16,12.83c1-1.88,2-3.77,3-5.66a29.72,29.72,0,0,1,3.87-6,2.2,2.2,0,0,1,1.68-.93,1.6,1.6,0,0,1,1.3,1.53,4.65,4.65,0,0,1-.48,2.11q-2.2,5.53-4.42,11.07l6.24-10.92a1.89,1.89,0,0,1,.62-.75c.68-.41,1.61.23,1.79,1a3.81,3.81,0,0,1-.43,2.32l-6.24,15.11a1.14,1.14,0,0,1-.35.55,1.23,1.23,0,0,1-.85.13c-7-.58-13.52-1.71-20.51-1.39" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-39" d="M676.23,380.73c-.48-3.44-1-8-1.51-11.42a1.79,1.79,0,0,1,.33-1.65,1.16,1.16,0,0,1,1.37.06,2.84,2.84,0,0,1,.85,1.19,27.25,27.25,0,0,1,1.83,7.3q.06-3.75.11-7.5a3.54,3.54,0,0,1,.7-2.5,1,1,0,0,1,.78-.35c.6.05.89.74,1,1.32a43.34,43.34,0,0,1,1.22,8c.43-2.21.87-4.43,1.3-6.64.26-1.35.85-3,2.22-3.1a18.18,18.18,0,0,1-.09,8.3,13.78,13.78,0,0,1,2.93-5.51c.31-.29.78-.56,1.12-.31a.8.8,0,0,1,.26.43c.68,2.07-.49,4.22-1.35,6.21a22.21,22.21,0,0,0-1.62,6.09,93.56,93.56,0,0,1-11.48.08" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-4" d="M160.44,916.3q3.33,9.29,6.67,18.56a2.62,2.62,0,0,0,.89,1.41,2.56,2.56,0,0,0,1.48.25l20.16-.53c-1.74-8.88,8.2-16.44,7.86-25.48L183.61,923.8a33.68,33.68,0,0,0-3.82-17.47L178,923.9c-6.44-4.78-4-16.16-10.17-21.23a117.83,117.83,0,0,0,4.61,20.23,56,56,0,0,0-11.15-14" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-39" d="M835.61,741.81c.51,1.88,1,3.75,1.54,5.62a1.53,1.53,0,0,0,.39.77,1.51,1.51,0,0,0,1,.21l12.91-.65c.43-2.87.85-5.74,1.28-8.6.12-.83-.14-2.06-1-1.9-.57,1.51-1.14,3-1.72,4.52a1.28,1.28,0,0,1-.54.77c-.57.28-1.16-.36-1.39-1-1.06-2.77.1-6.55-2.22-8.39q-.55,3.81-1.09,7.62c-.08.51-.24,1.13-.74,1.27s-1.11-.55-1.36-1.15q-1.22-3-2.45-6a16.17,16.17,0,0,0,.8,8.49,23.79,23.79,0,0,0-5.53-6.62c-1,2.31,2.56,5.12,1.1,7.2" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-4" d="M699.21,932.05l17.25,2.34a88.5,88.5,0,0,0,4.63-23.17A34.57,34.57,0,0,0,713,922.37l-4.39-17q-1.08,6.06-2.14,12.14c-.12.65-.34,1.42-1,1.6s-1.34-.54-1.73-1.18l-8.07-13.08A18.78,18.78,0,0,0,697,918.16a49,49,0,0,1-9.33-11A38.61,38.61,0,0,0,696.26,928" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-39" d="M372.74,162.92a38.72,38.72,0,0,1,2,11.45c0,.2,0,.44.18.56a.67.67,0,0,0,.46.1l11.72-.18a1.12,1.12,0,0,0,.61-.14,1,1,0,0,0,.3-.51,91.92,91.92,0,0,0,4.32-18.3c.07-.5.06-1.13-.39-1.36s-1.09.3-1.38.83c-1.87,3.35-2,7.47-3.84,10.83-.05-2.8-.09-5.59-.13-8.39a2.51,2.51,0,0,0-.26-1.3.87.87,0,0,0-1.14-.37,1.24,1.24,0,0,0-.41.91c-.41,3.37.86,7.25-1.24,9.92q-1.35-4.16-2.68-8.33c-.16-.5-.49-1.12-1-1a1,1,0,0,0-.59.41c-1,1.28-.94,3.1-.67,4.71s.7,3.29.21,4.85q-.73-2.26-1.49-4.55a12.85,12.85,0,0,0-2.8-5.41,29.53,29.53,0,0,0-.53,6" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-4" d="M989.09,893.55a40.93,40.93,0,0,1-11.28-18.79,2,2,0,0,1,0-1.67c.75-1.08,2.39,0,3.13,1.13l6.53,9.56a20.51,20.51,0,0,0,.21-9.09c-.28-1.39-.41-3.32.95-3.72,3,2.56,2,7.76,4.53,10.84a1.45,1.45,0,0,0,.94.62c.8.06,1.19-.95,1.33-1.74q1-5.62,2-11.26c3.24,1.8.93,7.39,3.36,10.18a1.64,1.64,0,0,0,1,.62c.73.08,1.31-.6,1.7-1.22a20.88,20.88,0,0,0,2.81-7,2.59,2.59,0,0,1,.79-1.72,1.64,1.64,0,0,1,2.19.69,4.28,4.28,0,0,1,.39,2.51c-.3,5.12-1.91,10.31-5.37,14.1s-9,5.88-13.91,4.44" transform="translate(-1.62 -0.21)"/>
					    <path class="cls-4" d="M955,522a24.46,24.46,0,0,1-7.17.59,8.25,8.25,0,0,1-6.1-3.4,12.23,12.23,0,0,1-1.37-3.75l-2.25-9.24a1.46,1.46,0,0,1,0-1c.42-.86,1.71-.2,2.34.51l4.5,5.09a2.77,2.77,0,0,0,2,1.22c1.09-.07,1.65-1.32,1.88-2.39a21.58,21.58,0,0,0,.49-4.16,13.06,13.06,0,0,1,.46-4.59c.56-1.44,2.12-2.65,3.6-2.2,3.24,1,1,6.87,3.65,8.95l6.72-10.46a63.63,63.63,0,0,1,2.44,12.07l5.36-5.92c1-1.09,2.6-2.27,3.76-1.36s.53,2.59-.12,3.81l-2.76,5.12a2.07,2.07,0,0,0-.35,1.58c.33,1,1.75.87,2.69.46s2.14-.89,2.9-.19a19.78,19.78,0,0,1-21.91,10.18" transform="translate(-1.62 -0.21)"/>
					  </g>
					  <path d="M169,703.33c10.31,0,19.16,6.85,22,17.34,3,11.37-6.87,24.92-6.87,24.92a7.65,7.65,0,0,1,5.69-2.42,10.87,10.87,0,0,1,4.84,1.26c4,2,3.49,9.8,3.49,9.8s1.64-4.49,7.64-4.49a15.69,15.69,0,0,1,2.52.24c7,1.26,10,10,8,13.56,7.54,2.44,4,6-5.09,6s-35,1-63.37,1.33c-10.86.12-21.65.68-30,.68-9.17,0-15.33-.68-15.23-3.37.14-4.09,7.53-3.51,5.76-5.28s-11.91-23.23.5-31.24a18.54,18.54,0,0,1,10.2-3.25c8.31,0,13.89,6.35,13.89,6.35s2-4.47,6-6a10.87,10.87,0,0,1,3.94-.75,10.24,10.24,0,0,1,6.25,2.1s-5.59-16.53,7.59-23.56A26,26,0,0,1,169,703.33m0-2v0a27.86,27.86,0,0,0-13.21,3.45c-9.39,5-10.57,14.82-9.55,21.7a12.15,12.15,0,0,0-3.35-.47,12.94,12.94,0,0,0-4.65.88,12.8,12.8,0,0,0-5.71,4.69A21.41,21.41,0,0,0,119,726.39,20.63,20.63,0,0,0,107.75,730c-4,2.58-6.3,6.55-6.86,11.81-.84,7.89,2.65,17,4.89,20.9-2,.68-5.08,2-5.2,5.42a3.59,3.59,0,0,0,1,2.68c1.92,2,6.45,2.76,16.18,2.76,4.38,0,9.44-.16,14.8-.32,4.93-.15,10-.3,15.19-.36,16.31-.18,31.53-.58,43.77-.91,8.79-.23,15.73-.42,19.57-.42,9.42,0,10.93-3.16,11.15-4.53s-.31-3.14-3.57-4.64a12.3,12.3,0,0,0-1.21-7.06,12.44,12.44,0,0,0-8.92-7.27,17.2,17.2,0,0,0-2.88-.28,10.82,10.82,0,0,0-6,1.63c-.5-2.57-1.65-5.42-4.26-6.73a12.9,12.9,0,0,0-5.73-1.47c-.24,0-.48,0-.7,0,2.74-5.28,5.83-13.5,3.81-21.05-3-11.26-12.61-18.82-23.89-18.82" transform="translate(-1.62 -0.21)"/>
					  <path d="M960.38,352.3h.32c4.46.06,9.56,1.51,11.32,5.61,2.23,5.19-2.62,10.73-8.15,12.41-.63.13-1.24.26-1.86.41a10.84,10.84,0,0,0,1.86-.41,42.89,42.89,0,0,1,8.34-.84c8.28,0,16.38,2.62,20.68,9.41,2,3.18,2.67,7.93-.25,10.3a9,9,0,0,1-5.22,1.57c-4.08.26-6.78,1.56-9.94,1.56a11.64,11.64,0,0,1-4.17-.79c2.6,1.92.56,2.37-.4,5.46a14.78,14.78,0,0,1-6,7.39,19.64,19.64,0,0,1-11,3.71,15,15,0,0,1-1.89-.12c-4.51-.58-8.83-3.58-10.23-7.91-1.18-3.62-1.11-8.78-4.81-9.68a4.38,4.38,0,0,0-.94-.11,10.26,10.26,0,0,0-4.23,1.39,47.8,47.8,0,0,1-16.31,4.61,23.09,23.09,0,0,1-2.38.13c-3.13,0-6.31-.71-8.18-3.11a7.39,7.39,0,0,1,.1-8.7,9.21,9.21,0,0,1,7.36-3.49c.3,0,.6,0,.9,0-3.37-2.63-3.9-11.59-1.88-15.35s6.52-8,10.65-9.11a20.93,20.93,0,0,1,5.3-.68c5.17,0,10.33,1.91,13.46,5.95,2.55-6.61,10.38-9.66,17.5-9.66m0-2c-6.15,0-14,2.22-18,8.24a19.47,19.47,0,0,0-13-4.53,23.08,23.08,0,0,0-5.81.74c-4.88,1.28-9.77,6.16-11.9,10.1-1.75,3.26-2,10,0,14.57a10.72,10.72,0,0,0-6.23,4,9.32,9.32,0,0,0-.08,11.12c2,2.57,5.3,3.88,9.76,3.88.82,0,1.69,0,2.58-.14a49.67,49.67,0,0,0,17-4.8l.18-.09a8.35,8.35,0,0,1,3.17-1.1,1.65,1.65,0,0,1,.46.06c1.45.35,2,2.2,2.6,5.22.23,1,.46,2.12.79,3.13,1.57,4.84,6.35,8.57,11.88,9.27a16.84,16.84,0,0,0,2.14.14A21.73,21.73,0,0,0,968.07,406a16.66,16.66,0,0,0,6.75-8.44,8.54,8.54,0,0,1,.89-1.89,8.06,8.06,0,0,0,.68-1.42c.36,0,.73.05,1.09.05a22.85,22.85,0,0,0,5.14-.75,29.54,29.54,0,0,1,4.92-.81,10.9,10.9,0,0,0,6.36-2c3.8-3.09,3.18-9,.68-12.92-4.22-6.67-12.17-10.34-22.37-10.34h-.43a12.34,12.34,0,0,0,1.87-2.86,9,9,0,0,0,.21-7.5c-1.81-4.19-6.71-6.73-13.14-6.82Z" transform="translate(-1.62 -0.21)"/>
					  <path d="M691.83,785.46a11.29,11.29,0,0,1,7.43,2.68c3.89,3.38,4.84,8.81,4.28,14.09a1.17,1.17,0,0,0,1.16,1.31,1.24,1.24,0,0,0,.8-.31,13.32,13.32,0,0,1,8.64-3.21,11.44,11.44,0,0,1,5.13,1.17c6.06,3,8.64,11.49,5.25,17.39a2.21,2.21,0,0,0-.33,1.32c.11,1,.84,1.1,1.48,1.28a6.13,6.13,0,0,1,3.41,8.63A3.17,3.17,0,0,1,728,831a3.11,3.11,0,0,1-1.51.32c-.3,0-.59,0-.88,0-15.38-1.16-29.28-1.6-43.33-1.6-11.58,0-23.27.3-36,.73-3.2.26-9.53.65-12.73.92-.53,0-1.08.08-1.62.08a5.09,5.09,0,0,1-3.36-1,6.31,6.31,0,0,1-1.72-3.37c-1-3.72-1.55-7.68.34-11.32a7.31,7.31,0,0,1,3.43-3.25,4,4,0,0,1,1.65-.43c1,0,1.71.63,2.85,1.45a1.12,1.12,0,0,0,.68.23,1.18,1.18,0,0,0,1.16-1.3,15.26,15.26,0,0,1,1-5.47c2-6.46,5.26-10.73,11.86-12.2a14.4,14.4,0,0,1,3.12-.34A13.39,13.39,0,0,1,665.74,803c-1-3.24,3.19-6.23,6.58-6.23h.09a10.12,10.12,0,0,1,4.24,1.08,2.91,2.91,0,0,0,1.21.27,3,3,0,0,0,2.92-2.63,11.49,11.49,0,0,1,4.51-8,11.14,11.14,0,0,1,6.54-2m0-2a13.25,13.25,0,0,0-7.72,2.42,13.4,13.4,0,0,0-5.32,9.38,1,1,0,0,1-.93.86.94.94,0,0,1-.36-.08,12,12,0,0,0-5.07-1.27h-.11a10,10,0,0,0-7.13,3.27A15.81,15.81,0,0,0,653,792.41a16.29,16.29,0,0,0-3.55.39c-6.81,1.51-10.92,5.7-13.34,13.56l-.11.37a20.07,20.07,0,0,0-1,4.2,4.82,4.82,0,0,0-2.71-.89,6,6,0,0,0-2.48.61,9.29,9.29,0,0,0-4.37,4.14c-2.25,4.32-1.52,8.87-.5,12.75a8,8,0,0,0,2.36,4.39,6.87,6.87,0,0,0,4.65,1.45c.63,0,1.23,0,1.78-.09,1.59-.13,4-.3,6.34-.46s4.73-.32,6.35-.45c15-.51,25.68-.73,35.85-.73,15.07,0,28.8.51,43.18,1.59.32,0,.67,0,1,0a4.9,4.9,0,0,0,2.47-.57,5,5,0,0,0,1.86-1.88,8.13,8.13,0,0,0-4.39-11.53,15,15,0,0,0-6.23-19.91,13.49,13.49,0,0,0-6-1.38,15.45,15.45,0,0,0-8.47,2.57c.24-6-1.54-10.86-5.1-14a13.25,13.25,0,0,0-8.74-3.17" transform="translate(-1.62 -0.21)"/>
					  <path d="M195.71,101c10.06,0,15.83,7.58,17.3,15a16.68,16.68,0,0,1,5.4-1.1c6.81,0,5,7.61,5,7.61a15.14,15.14,0,0,1,7.3-2.24,8.42,8.42,0,0,1,4.26,1.1c8.74,5.09,2.11,12.5,6.35,12.5h.32c.43,0,.92-.05,1.44-.05,5.39,0,15,1.71,17.11,5,2.28,3.58-13.67,6.34-22.46,6.46H237c-7.11,0-18-1.19-28.46-1.19-2.62,0-5.22.07-7.72.26-7.58.57-16,1.67-22.18,1.67-4.68,0-8-.64-8.58-2.64-1.3-4.54,3.9-6.84,2.28-9.49s-4.56-22.74,12.37-30.23a27.29,27.29,0,0,1,11-2.6m0-2a29.4,29.4,0,0,0-11.82,2.77,23.85,23.85,0,0,0-13.49,15.13c-2.39,7.68-1.13,15.79.22,18l0,.05a6.79,6.79,0,0,1-.86,1.6c-1,1.62-2.6,4.07-1.66,7.34,1,3.62,6.15,4.09,10.5,4.09,4.17,0,9.21-.48,14.54-1,2.58-.24,5.26-.5,7.79-.69,2.3-.17,4.78-.25,7.57-.25,5.67,0,11.57.36,16.78.68,4.32.26,8.41.51,11.68.51h.79c3.46,0,21.59-1.31,24.25-6.24a3.16,3.16,0,0,0-.13-3.3c-1.23-1.93-4.1-3.47-8.52-4.57a45.46,45.46,0,0,0-10.28-1.33c-.48,0-.93,0-1.35,0,0-.28,0-.6,0-.88.16-2.69.46-7.69-5.8-11.33a10.29,10.29,0,0,0-5.26-1.37,15,15,0,0,0-5.14,1,7.58,7.58,0,0,0-1.5-3.92,6.85,6.85,0,0,0-5.68-2.44,15.82,15.82,0,0,0-4,.57C212.15,106,205.78,99,195.71,99" transform="translate(-1.62 -0.21)"/>
					  <path class="cls-40" d="M117.81,772.53c-9.3,0-13.78-.71-15.46-2.45a2.62,2.62,0,0,1-.77-2c.1-3,3.11-4,4.91-4.65.25-.09.57-.19.82-.29-1.9-2.63-6.34-12.75-5.43-21.31.53-5,2.68-8.67,6.41-11.08A19.69,19.69,0,0,1,119,727.39c6.68,0,11.63,3.82,13.65,5.69a12.47,12.47,0,0,1,5.87-5.26,12,12,0,0,1,4.29-.81,11.45,11.45,0,0,1,4.7,1c-1-5-2-16.67,8.67-22.37A26.9,26.9,0,0,1,169,702.33c10.82,0,20,7.27,22.93,18.08,2.18,8.17-1.91,17.22-4.72,22.13a9.1,9.1,0,0,1,2.57-.37,11.76,11.76,0,0,1,5.28,1.37c2.79,1.39,3.69,5,4,7.69a9.33,9.33,0,0,1,6.73-2.48,15.07,15.07,0,0,1,2.7.25,11.43,11.43,0,0,1,8.19,6.71,10.7,10.7,0,0,1,1,7.24c3.37,1.3,3.92,2.81,3.75,3.89-.43,2.71-5.53,3.68-10.16,3.68-3.85,0-10.8.19-19.59.42-12.24.33-27.46.73-43.77.91-5.16.06-10.26.21-15.2.36-5.35.17-10.4.32-14.77.32Z" transform="translate(-1.62 -0.21)"/>
					  <path class="cls-40" d="M956,409.09a14.76,14.76,0,0,1-2-.13c-5.16-.66-9.61-4.11-11.06-8.59-.31-1-.54-2-.76-3-.61-2.81-1.18-5.46-3.34-6a3.19,3.19,0,0,0-.7-.08,8.91,8.91,0,0,0-3.62,1.21l-.17.08a48.6,48.6,0,0,1-16.65,4.71c-.86.08-1.69.13-2.48.13-4.14,0-7.16-1.18-9-3.49a8.42,8.42,0,0,1,.09-9.92,10,10,0,0,1,6.94-3.82c-2.35-3.92-2.57-11.25-.64-14.84,2-3.76,6.67-8.4,11.27-9.61a22,22,0,0,1,5.56-.71,18.13,18.13,0,0,1,13.19,5.12c3.44-6.48,11.55-8.83,17.77-8.83h.33c6,.08,10.59,2.4,12.23,6.22a8,8,0,0,1-.2,6.68,12.58,12.58,0,0,1-3.55,4.39c1-.07,2-.11,3-.11,9.85,0,17.49,3.51,21.52,9.87,2.28,3.6,2.89,8.89-.46,11.62a9.94,9.94,0,0,1-5.79,1.79,30.62,30.62,0,0,0-5.08.83,21.35,21.35,0,0,1-4.92.73,12.29,12.29,0,0,1-1.91-.15,4,4,0,0,1-.72,2,9.4,9.4,0,0,0-1,2.1,15.71,15.71,0,0,1-6.37,7.91A20.7,20.7,0,0,1,956,409.09" transform="translate(-1.62 -0.21)"/>
					  <path class="cls-40" d="M631.93,832.38a6.11,6.11,0,0,1-4-1.21,7.21,7.21,0,0,1-2-3.88c-1-3.7-1.67-8,.43-12a8.26,8.26,0,0,1,3.9-3.69,4.81,4.81,0,0,1,2.06-.52,5,5,0,0,1,3,1.34l.41.3.1,0a.19.19,0,0,0,.17-.21,14.48,14.48,0,0,1,.94-5.49l.11-.36c2.31-7.48,6.19-11.46,12.6-12.89a15.67,15.67,0,0,1,3.34-.36,14.68,14.68,0,0,1,12.25,6.34,6.9,6.9,0,0,1,.43-.67,8.82,8.82,0,0,1,6.69-3.31,11.34,11.34,0,0,1,4.75,1.17,1.78,1.78,0,0,0,.78.18,2,2,0,0,0,1.92-1.75,12.61,12.61,0,0,1,4.92-8.68,12.6,12.6,0,0,1,15.22.69c3.67,3.2,5.31,8.51,4.61,15a.17.17,0,0,0,0,.14.2.2,0,0,0,.13.06.22.22,0,0,0,.14-.06,14.36,14.36,0,0,1,9.3-3.46,12.59,12.59,0,0,1,5.58,1.27,14,14,0,0,1,5.67,18.79,1.35,1.35,0,0,0-.21.72c0,.2,0,.22.58.37l.18.05a7.12,7.12,0,0,1,4,10.1,4.14,4.14,0,0,1-1.49,1.53,4,4,0,0,1-2,.44c-.32,0-.64,0-1,0-14.41-1.09-28.16-1.6-43.26-1.6-10.19,0-20.93.22-35.93.73-1.56.13-4,.29-6.35.46s-4.75.32-6.34.45c-.53.05-1.11.09-1.7.09" transform="translate(-1.62 -0.21)"/>
					  <path class="cls-40" d="M178.63,147c-4,0-8.69-.39-9.54-3.36s.55-5,1.54-6.53,1.24-2.07.85-2.72c-1-1.67-2.59-9.24-.13-17.15a22.88,22.88,0,0,1,12.94-14.51A28.33,28.33,0,0,1,195.71,100c10,0,16.12,7.2,18,14.68a16.14,16.14,0,0,1,4.66-.81,5.88,5.88,0,0,1,4.9,2.06,7.38,7.38,0,0,1,1.33,4.77,15,15,0,0,1,6.09-1.46,9.33,9.33,0,0,1,4.76,1.24c5.72,3.33,5.46,7.76,5.3,10.4a4.76,4.76,0,0,0,.08,1.88s.14.08.47.08h.24c.46,0,1-.05,1.52-.05,5.06,0,15.51,1.6,18,5.44a2.18,2.18,0,0,1,.09,2.29c-2.09,3.87-17.37,5.63-23.38,5.71H237c-3.24,0-7.31-.25-11.62-.51-5.22-.32-11.13-.68-16.84-.68-2.81,0-5.31.08-7.65.26-2.54.19-5.22.44-7.81.69-5.3.5-10.32,1-14.44,1Z" transform="translate(-1.62 -0.21)"/>
					</svg>
				</div>
			</div>
			<div id="map2"></div>
		</div>
	</div>
	<!-- <div id="map2">
		<img src="<?php //echo Yii::app()->baseUrl?>/images/map-hover.png" class="img-responsive">
	</div> -->
	<div class="cta text-center hidden-lg hidden-md hidden-sm">
		<img src="<?php echo Yii::app()->baseUrl?>/images/cta-m.png"/>
		<img src="<?php echo Yii::app()->baseUrl?>/images/tree-m.png" class="tree-m"/>
	</div>
	<div class="map-m hidden-lg hidden-md">
		<div class="map-intro">
			Dò tìm<br/>
			khám phá
			<p>Khám phá <span class="dd"><?php echo StoreBrand::model()->getTotalStore();?></span> địa điểm zero-waste thú vị ở TP. HCM!</p>
		</div>
		<div id="map-m">
			<div class="bxslider">
				<?php
				foreach($map as $k => $m){
					$getDist = StoreBrand::model()->getTotalByDist($k);?>
					<?php if($getDist>0){?>
					<a href="<?php echo Yii::app()->baseUrl?>/store.html?tag=<?php echo $k?>" class="map-item">
						<img src="<?php echo Yii::app()->baseUrl?>/images/m<?php echo $k;?>.svg" class="img-responsive" />
						<div class="map-title">
							<h3><?php echo $m;?></h3>
							<p><?php echo $getDist;?> cửa hàng</p>
						</div>
					</a>

				<?php }?>
				<?php }?>
			</div>
		</div>
	</div>
</div>
<div id="store" class="modal fade store-modal" tabindex="-1" role="dialog" aria-labelledby="menu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="<?php echo Yii::app()->baseUrl?>/images/btn-close.png"></span></button>
      </div>
      <div class="modal-body">
        <?php //$this->widget('StoreWidget');?>
      </div>
    </div>
  </div>
</div>
<?php Yii::app()->clientScript->registerCssFile('https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css');?>
<?php Yii::app()->clientScript->registerCss('MapCss', '
.bx-wrapper{
	border:0;
	box-shadow:0 0;
	-webkit-box-shadow:0 0;
}
');?>
<?php Yii::app()->clientScript->registerScriptFile('https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js', CClientScript::POS_END);?>

<?php Yii::app()->clientScript->registerScript('SlideMap',"
  $(document).ready(function(){
	  //alert($(window).width());
  });
  if($(window).width()>=768){
		$('.bxslider').bxSlider({
			controls: false,
			slideWidth: 300,
			minSlides:3,
			maxSlides:3,
			slideMargin: 15,
			responsive: true
		});
	  $('.slide').bxSlider({
			auto: true,
			pause: 4000,
			keyboardEnabled: true,
			speed: 1000
		});
  }else{
		$('.bxslider').bxSlider({
			controls: false,
			slideWidth: 300,
			minSlides:1,
			maxSlides:2,
			slideMargin: 15,
			responsive: true
		});
	   $('.slidem').bxSlider({
 			auto: true,
 			pause: 4000,
 			keyboardEnabled: true,
 			speed: 1000,
		  pager: false
	   });
  }
  //map hover

$('g[data-dist]').hover(function() {
  	var t = this.getBoundingClientRect().top - 300,
    l = this.getBoundingClientRect().left;
	$('#map2').html('');
	var dis = $(this).attr('data-dist');
    
    $('#map2').css({'top': t + 'px', 'left': l + 'px'})
    $.ajax({
	    url: '".Yii::app()->baseUrl."/ajax/loadmap',
	    type: 'post',
	    data:{dist:dis},
	    dataType: 'json',
	    success:function(data){
		    var html = '';
		    html += '<div class=\"box-pp\"><img class=\"img-responsive\" src=\"".Yii::app()->baseUrl."\/images/'+dis+'.svg\"></div>';
    		    html += '<div class=\"box-pr\"><div><h3 class=\"box-title\">'+ data.district+'</h3>';
		    html +='<p>'+data.total+' cửa hàng</p></div></div>';
		    $('#map2').html(html);
		    $('#map2').show();
	    }
    })
});
", CClientScript::POS_END);?>
