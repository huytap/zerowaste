<?php


?>

<div class="wrapper home">
	<div class="header">
	     <?php $this->widget('MenuWidget');?>
		<div class="clip hidden-xs hidden-sm">
			<img src="images/slide1.jpg" class="img-responsive"/>
		</div>
		<div class="clip hidden-lg hidden-md">
			<img src="images/slide-m1.png?v=1" class="img-responsive"/>
		</div>
	</div>
	<div class="section">
		<div class="home-content">
			<?php
			echo Settings::model()->getSetting('zw_intro');?>
		</div>
		<div class="btn-cta"><img src="<?php echo Yii::app()->baseUrl?>/images/btn-cta.png" ></div>
		<div class="games text-right">
			<img src="<?php echo Yii::app()->baseUrl?>/images/tree.png" />
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
				<svg version="1.1" class="img-responsive" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					 width="1009.1px" height="800.1px" viewBox="0 0 1009.1 800.1" style="enable-background:new 0 0 1009.1 800.1;"
					 xml:space="preserve">
				<style type="text/css">
				<![CDATA[

						.st0{clip-path:url(#SVGID_42_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st1{fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st2{clip-path:url(#SVGID_18_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st3{fill:#48B6F6;}
					.st4{fill:none;stroke:#12AF5D;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st5{fill:#12AF5D;}

						.st6{clip-path:url(#SVGID_20_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st7{clip-path:url(#SVGID_54_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st8{clip-path:url(#SVGID_8_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st9{fill:none;stroke:#048946;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st10{clip-path:url(#SVGID_32_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st11{clip-path:url(#SVGID_10_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st12{clip-path:url(#SVGID_44_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st13{clip-path:url(#SVGID_22_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st14{clip-path:url(#SVGID_56_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st15{clip-path:url(#SVGID_34_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st16{clip-path:url(#SVGID_12_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st17{clip-path:url(#SVGID_46_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st18{clip-path:url(#SVGID_24_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st19{clip-path:url(#SVGID_2_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st20{clip-path:url(#SVGID_58_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st21{clip-path:url(#SVGID_60_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st22{opacity:0.2;}

						.st23{clip-path:url(#SVGID_36_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st24{fill:#FFC064;}
					.st25{fill:none;}

						.st26{clip-path:url(#SVGID_14_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st27{clip-path:url(#SVGID_48_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st28{clip-path:url(#SVGID_50_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st29{clip-path:url(#SVGID_26_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st30{clip-path:url(#SVGID_4_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st31{clip-path:url(#SVGID_38_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
					.st32{fill:#01AC83;}

						.st33{clip-path:url(#SVGID_40_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st34{clip-path:url(#SVGID_16_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st35{clip-path:url(#SVGID_52_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st36{clip-path:url(#SVGID_28_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st37{clip-path:url(#SVGID_6_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}

						.st38{clip-path:url(#SVGID_30_);fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;}
				]]>
				</style>
				<g>
					<path class="st24" d="M481.7,462.6l33.4-33.4l44.7,30.9l-26.9,25.7c-1.7,1.6-1.9,4.2-0.6,6.1l9.5,13.3l-44.3,10.8L481.7,462.6z"/>
					<path d="M515.2,430.5l43,29.7l-26,24.8c-2,1.9-2.3,5.1-0.7,7.4l8.6,12.1l-41.9,10.2l-15.4-51.8L515.2,430.5 M515,427.9l-34.4,34.4
						l16.3,54.8l46.6-11.4l-10.3-14.5c-1.1-1.5-0.9-3.5,0.4-4.8l27.7-26.5L515,427.9z"/>
				</g>
				<g>
					<g>
						<path class="st24" d="M566.2,499.4l60.6-54c1-0.9,1.6-2.3,1.6-3.6c0-1.4-0.7-2.7-1.8-3.5l-38.7-29.8l19.8-6.1l47.8,11.6l24.1,15.5
							c-11.7,11.9-25.6,28.7-27.2,43.3c-0.3,2.6,0.1,5.5,1.1,8.4l-66.3,48.4L566.2,499.4z"/>
					</g>
					<path d="M607.7,403.4l47.4,11.5l22.9,14.8c-11.6,11.9-25,28.5-26.7,43.1c-0.3,2.6,0,5.3,0.9,8.2l-64.9,47.4l-19.8-28.7l59.9-53.4
						c1.3-1.1,1.9-2.7,1.9-4.4c-0.1-1.7-0.9-3.2-2.2-4.3L590,408.9L607.7,403.4 M607.6,401.3l-21.9,6.8l40.2,31c0.9,0.7,1.4,1.7,1.4,2.8
						c0,1.1-0.4,2.1-1.2,2.9l-61.2,54.6l22,31.8l67.7-49.5c-1.1-3-1.6-5.9-1.3-8.7c1.7-14.9,16.6-32.4,27.8-43.6l-25.2-16.3L607.6,401.3
						z"/>
				</g>
				<path class="st24" d="M536.3,337.4l26.9,12.9l31,25.8l7.2,18.5l-23.9,7.3c-0.8,0-1.6,0.3-2.2,0.7l-21.6,6.6l-33.2,7.7L536.3,337.4z"
					/>
				<path d="M537,338.8l25.7,12.3l30.7,25.6l6.7,17.2l-22.7,7c-0.9,0.1-1.7,0.3-2.5,0.8l-21.4,6.6l-31.7,7.4L537,338.8 M535.6,335.9
					l-16.3,82.4l34.8-8.1l21.7-6.7c0.6-0.4,1.3-0.6,2-0.6l25-7.7l-7.7-19.7l-31.3-26L535.6,335.9z"/>
				<rect x="-317.2" y="73.3" class="st25" width="1009.1" height="800.1"/>
				<path class="st9" d="M1,709.7c2.2,1.6,3.8,4.1,4.3,6.7"/>
				<path class="st9" d="M5.7,703.4c4.4,3.4,7.1,9,6.9,14.6"/>
				<path class="st9" d="M16.8,704.9c1.5,3.5,2.1,7.3,1.8,11.1"/>
				<path class="st4" d="M688.1,474.1c0.4,1.5,0.9,3,1.3,4.6"/>
				<path class="st4" d="M691.1,471.1c1.3,1.9,2.1,4.2,2,6.5"/>
				<path class="st4" d="M698.5,471.6c0.2,1.8,0.3,3.7,0.5,5.5"/>
				<g>
					<path class="st24" d="M542.3,489.7l28.1-26.8c1-1,1.5-2.3,1.4-3.7c-0.1-1.4-0.8-2.7-2-3.5l-43.9-30.4l30.2-7c0.1,0,0.2-0.1,0.3-0.1
						l20.6-6.3l39.5,30.4l-66,58.8L542.3,489.7z"/>
					<g>
						<path d="M576.8,412.9l38.1,29.4l-64.3,57.3l-7-9.8l27.4-26.3c1.2-1.2,1.9-2.8,1.7-4.5c-0.1-1.7-1-3.2-2.4-4.2l-42.1-29.1l28-6.5
							c0.1,0,0.3-0.1,0.4-0.1L576.8,412.9 M577.2,410.7l-21.1,6.5c-0.1,0-0.2,0-0.2,0.1l-32.4,7.6l45.8,31.7c0.9,0.6,1.5,1.6,1.6,2.7
							c0.1,1.1-0.3,2.2-1.1,2.9l-28.7,27.4l9.3,13l67.8-60.4L577.2,410.7z"/>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_1_" x="573.9" y="439.5" width="2" height="8.5"/>
								</defs>
								<clipPath id="SVGID_2_">
									<use xlink:href="#SVGID_1_"  style="overflow:visible;"/>
								</clipPath>
								<line class="st19" x1="574.9" y1="440.5" x2="574.9" y2="447"/>
							</g>
						</g>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_3_" x="580.2" y="435.5" width="2.9" height="13.5"/>
								</defs>
								<clipPath id="SVGID_4_">
									<use xlink:href="#SVGID_3_"  style="overflow:visible;"/>
								</clipPath>
								<path class="st30" d="M581.5,436.5c-0.5,3.8-0.2,7.8,0.7,11.5"/>
							</g>
						</g>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_5_" x="586.9" y="437.5" width="2" height="10.5"/>
								</defs>
								<clipPath id="SVGID_6_">
									<use xlink:href="#SVGID_5_"  style="overflow:visible;"/>
								</clipPath>
								<line class="st37" x1="587.9" y1="438.5" x2="587.9" y2="447"/>
							</g>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M371.5,293.8l26.7-25.3l28,14.6c0.7,0.3,1.4,0.5,2.1,0.5c1.5,0,2.9-0.7,3.7-1.9l18-23.9l84.8,38.6l-7.3,32.7
						c-0.2,0.9-16,85-17.3,91.7L458,473.1L371.5,293.8z"/>
					<path d="M450.4,259.1l83.3,38l-7.1,31.9c-0.2,0.9-15,79.6-17.2,91.4l-51.1,51.1L372.7,294l25.6-24.3l27.4,14.3
						c0.8,0.4,1.7,0.6,2.6,0.6c1.8,0,3.5-0.8,4.5-2.3L450.4,259.1 M449.7,256.6l-18.4,24.6c-0.7,0.9-1.8,1.5-2.9,1.5
						c-0.6,0-1.2-0.1-1.7-0.4l-28.7-15l-27.7,26.3l87.4,181.3l53.5-53.5c0,0,17.1-91.1,17.3-91.9l7.4-33.5L449.7,256.6z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_7_" x="451.6" y="317.3" width="14.6" height="12.4"/>
							</defs>
							<clipPath id="SVGID_8_">
								<use xlink:href="#SVGID_7_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st8" d="M452.6,319.3c0.8,3.1,1.5,6.3,2.3,9.4"/>
							<path class="st8" d="M459.1,318.3c0.3,2.4,1,4.8,2,7"/>
							<path class="st8" d="M464.1,319.8c1.2,1.9,1.4,4.4,0.6,6.5"/>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M368.4,515.2v-22c0-0.5-0.1-1.1-0.3-1.6L314,342.5l35.1-27.6l0.1-0.1l0.1,0l0.1-0.1l15-14.2l76.4,158.4
						l-42.3,33.3c-1,0.8-1.6,2-1.8,3.2l-2.4,24.8L368.4,515.2z"/>
					<path d="M364.1,302.1l75.5,156.5l-41.6,32.8c-1.2,1-2,2.4-2.1,3.9l-2.3,23.7l-24.2-4.7v-21.2c0-0.7-0.1-1.3-0.3-1.9l-53.8-148.4
						l34.5-27.1c0.1-0.1,0.1-0.1,0.2-0.2c0.1-0.1,0.1-0.1,0.2-0.2L364.1,302.1 M364.7,298.8l-16,15.2c0,0-0.1,0.1-0.1,0.1
						s-0.1,0.1-0.1,0.1l-35.6,28l54.3,149.7c0.1,0.4,0.2,0.8,0.2,1.2V516l28,5.4l2.5-25.9c0.1-1,0.6-1.9,1.4-2.5l42.9-33.8L364.7,298.8z
						"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_9_" x="392.4" y="407.9" width="2" height="8.5"/>
							</defs>
							<clipPath id="SVGID_10_">
								<use xlink:href="#SVGID_9_"  style="overflow:visible;"/>
							</clipPath>
							<line class="st11" x1="393.4" y1="408.9" x2="393.4" y2="415.4"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_11_" x="398.7" y="403.9" width="2.9" height="13.5"/>
							</defs>
							<clipPath id="SVGID_12_">
								<use xlink:href="#SVGID_11_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st16" d="M400,404.9c-0.5,3.8-0.2,7.8,0.7,11.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_13_" x="405.4" y="405.9" width="2" height="10.5"/>
							</defs>
							<clipPath id="SVGID_14_">
								<use xlink:href="#SVGID_13_"  style="overflow:visible;"/>
							</clipPath>
							<line class="st26" x1="406.4" y1="406.9" x2="406.4" y2="415.4"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_15_" x="352.7" y="331.9" width="13.2" height="8"/>
							</defs>
							<clipPath id="SVGID_16_">
								<use xlink:href="#SVGID_15_"  style="overflow:visible;"/>
							</clipPath>
							<line class="st34" x1="353.7" y1="332.9" x2="353.7" y2="338.9"/>
							<path class="st34" d="M359.6,333.4c-0.4,1.7-0.7,3.3-1,5"/>
							<path class="st34" d="M364.9,334.4c-0.4,1.5-0.8,3-1.2,4.5"/>
						</g>
					</g>
				</g>
				<line class="st4" x1="440.4" y1="2.5" x2="440.4" y2="8.5"/>
				<line class="st4" x1="445.4" y1="1" x2="445.4" y2="8.5"/>
				<path class="st4" d="M451.9,2c0.2,1.5,0.1,3.1-0.5,4.5"/>
				<path class="st9" d="M664.2,87.8c0.4,1.5,0.6,3,0.5,4.5"/>
				<path class="st9" d="M672.1,84.8c0.3,2.5,0.2,5-0.3,7.5"/>
				<line class="st9" x1="676.7" y1="86.3" x2="676.7" y2="92.3"/>
				<g>
					<path class="st24" d="M403.6,522l2.3-23.7l39.1-30.8l7.5,15.6c0.7,1.4,1.9,2.3,3.4,2.6c0.3,0,0.5,0.1,0.8,0.1
						c1.2,0,2.4-0.5,3.3-1.4l14.3-14.3l14.4,48.5l-36.4,12.9L403.6,522z"/>
					<g>
						<path d="M444.6,469.1l7,14.5c0.8,1.6,2.3,2.8,4.1,3.1c0.3,0.1,0.6,0.1,0.9,0.1c1.5,0,2.9-0.6,4-1.7l13.1-13.1l13.7,46l-35.2,12.5
							l-47.5-9.2l2.1-22.4L444.6,469.1 M445.3,466l-40.4,31.8l-2.4,25.1l49.8,9.7l37.6-13.3l-15.2-51l-15.5,15.5
							c-0.7,0.7-1.6,1.1-2.6,1.1c-0.2,0-0.4,0-0.6-0.1c-1.2-0.2-2.2-0.9-2.7-2L445.3,466z"/>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_17_" x="453.4" y="505.4" width="13.5" height="15.5"/>
								</defs>
								<clipPath id="SVGID_18_">
									<use xlink:href="#SVGID_17_"  style="overflow:visible;"/>
								</clipPath>
								<line class="st2" x1="454.4" y1="511.4" x2="454.4" y2="513.4"/>
								<path class="st2" d="M462.9,506.4c-0.4,3.8-1.4,7.5-3,11"/>
								<path class="st2" d="M465.9,512.4c-0.1,2.6-0.8,5.2-2,7.5"/>
							</g>
						</g>
					</g>
				</g>
				<g class="st22">
					<g>
						<defs>
							<rect id="SVGID_19_" x="557.1" y="376.8" width="13.5" height="15.5"/>
						</defs>
						<clipPath id="SVGID_20_">
							<use xlink:href="#SVGID_19_"  style="overflow:visible;"/>
						</clipPath>
						<line class="st6" x1="558.1" y1="382.8" x2="558.1" y2="384.8"/>
						<path class="st6" d="M566.7,377.8c-0.4,3.8-1.4,7.5-3,11"/>
						<path class="st6" d="M569.7,383.8c-0.1,2.6-0.8,5.2-2,7.5"/>
					</g>
				</g>
				<line class="st9" x1="581.4" y1="722.9" x2="581.4" y2="724.9"/>
				<path class="st9" d="M589.9,717.9c-0.4,3.8-1.4,7.5-3,11"/>
				<path class="st9" d="M592.9,723.9c-0.1,2.6-0.8,5.2-2,7.5"/>
				<g class="st22">
					<g>
						<defs>
							<rect id="SVGID_21_" x="616.9" y="471.9" width="15.6" height="13.5"/>
						</defs>
						<clipPath id="SVGID_22_">
							<use xlink:href="#SVGID_21_"  style="overflow:visible;"/>
						</clipPath>
						<path class="st13" d="M618.1,477.9c-0.3,2-0.1,4.1,0.4,6"/>
						<path class="st13" d="M624.1,472.9c0.5,3.8,1.1,7.7,1.6,11.5"/>
						<path class="st13" d="M631.5,477.9c-0.2,1-0.3,2-0.5,3"/>
					</g>
				</g>
				<g>
					<path d="M457.9,173.8l118.5,34.4l25.9,64.8c0,0.1,0.1,0.2,0.1,0.3c0,0.1,0.1,0.2,0.1,0.3l11.8,22.5l-40.9,14c-1.7,0.6-3,2-3.6,3.7
						l-7.5,24.7l-23-11l6.4-32.5c0-0.1,0-0.2,0-0.3c0-0.2,0.1-0.4,0.1-0.7c0-0.1,0-0.2,0-0.4c0-0.2,0-0.4-0.1-0.6c0-0.1-0.1-0.3-0.1-0.4
						c0-0.2-0.1-0.4-0.2-0.6c-0.1-0.1-0.1-0.3-0.2-0.4c-0.1-0.2-0.2-0.4-0.3-0.6c-0.1-0.1-0.1-0.2-0.2-0.3c-0.2-0.2-0.3-0.4-0.4-0.5
						c-0.1-0.1-0.1-0.2-0.2-0.2c-0.2-0.2-0.5-0.5-0.8-0.7c-0.1-0.1-0.2-0.1-0.3-0.2l0,0c-0.1-0.1-0.3-0.2-0.5-0.3l-91.6-41.8
						c-0.7-0.3-1.5-0.5-2.3-0.5c-1.8,0-3.5,0.8-4.5,2.3l-17.3,23.1l-21.4-11.2L457.9,173.8 M457,171.5l-54.5,89.9l24.8,12.9l18.3-24.5
						c0.7-0.9,1.8-1.5,2.9-1.5c0.5,0,1,0.1,1.5,0.3l91.6,41.8c0.1,0.1,0.3,0.1,0.4,0.2c0.1,0,0.1,0.1,0.2,0.1c0.2,0.1,0.4,0.3,0.5,0.4
						c0,0,0.1,0.1,0.1,0.1c0.1,0.1,0.2,0.2,0.3,0.4c0,0.1,0.1,0.1,0.1,0.2c0.1,0.1,0.1,0.2,0.2,0.4c0,0.1,0.1,0.2,0.1,0.3
						c0,0.1,0.1,0.2,0.1,0.4c0,0.1,0,0.2,0.1,0.3c0,0.1,0,0.3,0,0.4c0,0.1,0,0.2,0,0.3c0,0.2,0,0.3,0,0.5c0,0.1,0,0.1,0,0.2l-6.7,34
						l26.5,12.7l8.2-26.9c0.3-1.1,1.2-2,2.3-2.4l43.1-14.8l-12.8-24.5c0-0.1,0-0.1-0.1-0.2c0,0-0.1-0.1-0.1-0.1l-26.3-65.7L457,171.5z"
						/>
					<g>
						<path class="st24" d="M538.2,327.9l6.6-33.3l0-0.2c0-0.2,0-0.4,0.1-0.6c0-0.1,0-0.2,0-0.3c0-0.2,0-0.4-0.1-0.6
							c0-0.1,0-0.2-0.1-0.3c0-0.2-0.1-0.3-0.1-0.5c0-0.1-0.1-0.2-0.1-0.3c-0.1-0.2-0.2-0.3-0.2-0.5c-0.1-0.1-0.1-0.2-0.2-0.3
							c-0.1-0.2-0.2-0.3-0.4-0.5c-0.1-0.1-0.1-0.1-0.2-0.2c-0.2-0.2-0.4-0.4-0.6-0.5c-0.1,0-0.1-0.1-0.2-0.1c-0.2-0.1-0.3-0.2-0.5-0.3
							l-91.6-41.8c-0.6-0.3-1.3-0.4-1.9-0.4c-1.5,0-2.9,0.7-3.7,1.9L427,273l-23.1-12l53.5-88.4l119.7,34.7l26.1,65.3l0.1,0.1
							c0,0,0,0.1,0.1,0.2l12.3,23.5l-42,14.4c-1.4,0.5-2.5,1.6-2.9,3l-7.9,25.8L538.2,327.9z"/>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_23_" x="563.9" y="286.2" width="13.6" height="9.5"/>
								</defs>
								<clipPath id="SVGID_24_">
									<use xlink:href="#SVGID_23_"  style="overflow:visible;"/>
								</clipPath>
								<line class="st18" x1="564.9" y1="288.7" x2="564.9" y2="294.7"/>
								<line class="st18" x1="569.9" y1="287.2" x2="569.9" y2="294.7"/>
								<path class="st18" d="M576.4,288.2c0.2,1.5,0.1,3.1-0.5,4.5"/>
							</g>
						</g>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_25_" x="467.7" y="190.4" width="17" height="15"/>
								</defs>
								<clipPath id="SVGID_26_">
									<use xlink:href="#SVGID_25_"  style="overflow:visible;"/>
								</clipPath>
								<path class="st29" d="M470.3,193.9c-0.1,1.9-0.6,3.8-1.5,5.5"/>
								<path class="st29" d="M478.8,191.4c-1.5,3.5-2.6,7.2-3.3,10.9"/>
								<path class="st29" d="M483.7,197.9c-1.2,2.2-2.4,4.3-3.6,6.5"/>
							</g>
						</g>
					</g>
				</g>
				<path class="st9" d="M190.6,683.6c0.2,1.7,0.1,3.4-0.4,5"/>
				<path class="st9" d="M196.6,681.6c-0.4,2.7-0.7,5.3-1.1,8"/>
				<path class="st9" d="M201.6,685.6c-0.2,1.7-0.3,3.3-0.5,5"/>
				<path class="st4" d="M93.2,570.1c0.3,2.3,1.1,4.6,2.4,6.6"/>
				<path class="st4" d="M100.7,566.6c0.8,2.5,1.7,5,2.5,7.5"/>
				<path class="st4" d="M107.7,565.1c0.7,2.5,1.3,5,2,7.5"/>
				<g>
					<path class="st24" d="M766,731c-12.7,0-26-1.4-28.6-1.6l-39-55.1L599.2,642l8.2-60l-1.1,0.3l2.5-22.3l84.8,3.7l0.2,0
						c1.9,0,3.6-1.2,4.3-3l12.1-31c0.2-0.6,0.3-1.1,0.3-1.7c11.4-2.7,36.3-9.3,40.7-17c4.8-8.4,10.5-41.1,11.9-49.6l52,53.3
						c-4.8,9.7-34.7,70.3-30.7,78.4c3.8,7.6,7.7,34.1,8,36c-0.3,4.6-5.3,81.2-1.3,94.5c0.3,1,0.2,1.8-0.4,2.5
						C789.5,728.1,784.6,731,766,731L766,731z"/>
					<path d="M763.8,463.7l50.1,51.4c-2.2,4.4-9.5,19.3-16.4,34.8c-4.8,10.8-8.5,19.8-10.9,26.6c-4.2,12-3.9,15.4-3,17.2
						c3.7,7.3,7.5,33,7.9,35.6c-0.4,5.5-5.3,81.4-1.3,94.8c0.3,0.9,0,1.3-0.2,1.7c-0.9,1.3-5.2,4.2-24,4.2c-12.1,0-24.6-1.2-28-1.6
						l-38.5-54.5l-0.4-0.5l-0.6-0.2l-98.1-31.8l7.9-57.6l0.4-3l-1.2,0.3l2.3-19.9l83.8,3.7c0.1,0,0.2,0,0.3,0c2.3,0,4.4-1.4,5.3-3.6
						l12.1-31c0.2-0.4,0.3-0.8,0.3-1.3c14-3.3,36.2-9.6,40.6-17.3C756.6,503.7,761.9,474.4,763.8,463.7 M762.5,459.5
						c0,0-6.7,41.8-12.1,51.2c-4.4,7.7-31.1,14.5-40.9,16.7c0.2,0.7,0.1,1.4-0.2,2.1l-12.1,31c-0.5,1.4-1.9,2.3-3.4,2.3
						c-0.1,0-0.1,0-0.2,0l-85.7-3.8l-2.8,24.7c0.7-0.2,1.1-0.3,1.1-0.3l-8.1,59.3l99.7,32.3l39.1,55.2c0,0,14.8,1.7,29.1,1.7
						c14.3,0,28.1-1.7,26.1-8.4c-4-13.5,1.3-94.3,1.3-94.3s-4-28.3-8.1-36.4c-4-8.1,31-78.1,31-78.1L762.5,459.5z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_27_" x="745.3" y="618.7" width="27.7" height="19"/>
							</defs>
							<clipPath id="SVGID_28_">
								<use xlink:href="#SVGID_27_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st36" d="M746.3,625.8c3,2.8,4.9,6.8,5.2,10.9"/>
							<path class="st36" d="M752.9,622.2c2.1,4,3.2,8.5,3.3,13"/>
							<path class="st36" d="M757.9,620.7c1.9,3.1,2.8,6.9,2.4,10.5"/>
							<path class="st36" d="M767.5,619.7c-0.6,3.8-1.2,7.6-1.8,11.5"/>
							<path class="st36" d="M772,622.8c-0.9,2.9-1.5,5.9-1.7,8.9"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_29_" x="765.1" y="514.7" width="15.4" height="13.6"/>
							</defs>
							<clipPath id="SVGID_30_">
								<use xlink:href="#SVGID_29_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st38" d="M766.1,520.7c0,2.4,0.9,4.7,2.4,6.6"/>
							<path class="st38" d="M772,515.7c0,2.9,0.5,5.8,1.5,8.5"/>
							<path class="st38" d="M779.1,516.2c-0.3,2.5-0.1,5,0.4,7.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_31_" x="654.4" y="621.7" width="17.5" height="11.7"/>
							</defs>
							<clipPath id="SVGID_32_">
								<use xlink:href="#SVGID_31_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st10" d="M655.5,628.2c-0.2,1.5,0.2,3,1.1,4.2"/>
							<path class="st10" d="M661.3,622.7c0.7,3,1,6,1.1,9"/>
							<path class="st10" d="M670.4,626.2c0.2,1.7,0.4,3.3,0.5,5"/>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M460.6,538.4l35.1-12.5l55.1-13.4l0.2-0.1c0.2,0,0.4-0.1,0.7-0.3c0.1-0.1,0.2-0.1,0.3-0.1
						c0.3-0.2,0.6-0.3,0.8-0.5l0,0l0.1-0.1l6.5-5.8l20.9,30.3l-11.4,13.5l-87.3,12.8L460.6,538.4z"/>
					<path d="M559,507.2l19.8,28.8l-10.6,12.6l-86.4,12.7l-19.5-22.4l33.7-11.9l55-13.4c0.1,0,0.2-0.1,0.3-0.1c0.3-0.1,0.5-0.2,0.8-0.3
						c0.1,0,0.2-0.1,0.3-0.1c0.3-0.2,0.6-0.4,0.9-0.6l0,0l0.1-0.1L559,507.2 M559.4,504.2l-7.4,6.6c0,0,0,0,0,0c0,0,0,0,0,0
						c-0.2,0.2-0.4,0.3-0.7,0.5c-0.1,0-0.1,0.1-0.2,0.1c-0.2,0.1-0.4,0.2-0.6,0.2c0,0-0.1,0-0.1,0L495.4,525l-36.5,13l22.1,25.4l88.3-13
						l12.1-14.3L559.4,504.2z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_33_" x="536.5" y="528.1" width="15" height="12.6"/>
							</defs>
							<clipPath id="SVGID_34_">
								<use xlink:href="#SVGID_33_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st15" d="M537.5,534.6c0,1.4,0,2.7,0,4.1c0,0.4,0,0.8,0.3,1s0.8-0.3,0.5-0.5"/>
							<path class="st15" d="M544.1,529.1c-0.5,2.9-0.2,5.8,0.8,8.6"/>
							<path class="st15" d="M550.5,534.6c-0.4,1.5-0.6,3-0.5,4.5"/>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M332.8,742.7l-47.7,4l-2.6-27.1c0.4-1.4,2.7-10.5,4.8-21.2l54.9-17.6c1.4-0.5,2.5-1.6,3-3l21.2-64.7
						l24.7,13.5c0.7,0.4,1.5,0.6,2.2,0.6c0.9,0,1.8-0.3,2.5-0.7l85.4-54.7l90.2-13.3l28,1.2l-2.8,25.4c-26.9,7.7-88.7,25.4-97.4,29.8
						c-10.1,5-88.9,56.4-96,66.3c-6.4,8.9-32.5,64.5-36.1,72.1L332.8,742.7z"/>
					<path d="M571.5,559.5l26.9,1.2l-2.6,23.7c-27.3,7.8-88.2,25.3-96.9,29.7c-10.1,5-89.2,56.6-96.4,66.6c-6.2,8.7-31.1,61.4-35.8,71.5
						l-33.4-10.3l-0.4-0.1l-0.4,0l-46.5,3.9l-2.5-26c0.5-1.8,2.7-10.4,4.7-20.5l54.3-17.4c1.7-0.6,3.1-1.9,3.6-3.6l20.8-63.6l23.7,12.9
						c0.8,0.5,1.8,0.7,2.7,0.7c1.1,0,2.1-0.3,3-0.9l85.2-54.6L571.5,559.5 M571.3,557.5l-90.5,13.3l-85.6,54.8c-0.6,0.4-1.3,0.6-2,0.6
						c-0.6,0-1.2-0.1-1.7-0.4l-25.8-14.1l-21.5,65.9c-0.4,1.1-1.2,2-2.4,2.3l-55.5,17.7c-2.3,12-4.9,21.9-4.9,21.9l2.7,28.3l48.5-4
						l35,10.8c0,0,29.6-63.3,36.4-72.7c6.7-9.4,84.9-60.6,95.6-66c8.8-4.4,74.1-23.1,97.8-29.9l3-27.1L571.3,557.5z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_35_" x="373" y="664.6" width="16.4" height="22.5"/>
							</defs>
							<clipPath id="SVGID_36_">
								<use xlink:href="#SVGID_35_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st23" d="M375.4,665.6c-1.8,6.7-1.9,13.8-0.3,20.5"/>
							<path class="st23" d="M381.4,666.7c-0.5,5.8-0.6,11.7-0.4,17.5"/>
							<path class="st23" d="M388.4,668.6c-1,5.5-2,11-2.9,16.5"/>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M659.9,405.8c-0.4-0.3-0.9-0.5-1.4-0.6L611,393.6l-8.5-22c-0.3-0.7-0.8-1.4-1.4-1.9l-30-25L579,319l44.9-15.4
						c1.3-0.4,2.3-1.4,2.8-2.7c0.5-1.3,0.4-2.7-0.2-3.9l-13-24.9l23-18.5c12.2,17.5,42.4,58.7,46.6,58.7c1.8,0,11.3-5.7,35.9-20.8
						c24.8-15.3,55.8-34.2,62.6-35.8c0.2,0,0.4-0.1,0.6-0.1c4.7,0,13.4,9.6,21.1,23.4c9.3,16.6,16.6,38.6,10.9,47.9
						c-7.2,11.7-25.8,13.4-36.3,13.4c-5,0-8.5-0.4-8.5-0.4c-0.3,0-34.5-5.7-53.4-5.7c-6.2,0-10.1,0.6-12,1.8
						c-8.2,5.5,14.9,45.9,20.8,55.8L693.1,417c0,0-2.8,2.3-6.7,5.9L659.9,405.8z"/>
					<path d="M636.2,255.1c8.6,12.3,18.8,26.3,27.7,37.7c16,20.6,17.8,20.6,19,20.6c2,0,9.1-4.2,36.4-21c23.5-14.4,55.6-34.1,62.3-35.6
						c0.1,0,0.3,0,0.4,0c3.7,0,11.8,7.9,20.2,22.9c9.1,16.3,16.4,37.9,10.9,46.9c-6.9,11.2-25.2,12.9-35.5,12.9c-4.6,0-7.9-0.3-8.3-0.4
						c-2-0.3-34.8-5.7-53.5-5.7c-8.5,0-11.2,1.1-12.5,2c-3,2-5,7.5,7.1,32.2c5.1,10.4,10.8,20.5,13,24.2l-31,24.5
						c-0.1,0.1-2.5,2.1-6.1,5.4l-25.9-16.7c-0.5-0.3-1.1-0.6-1.7-0.7l-47-11.4l-8.4-21.5c-0.3-0.9-0.9-1.7-1.6-2.3l-29.5-24.5l7.5-24.6
						l44.4-15.2c1.6-0.5,2.8-1.7,3.4-3.3c0.6-1.5,0.5-3.3-0.2-4.7l-12.7-24.2L636.2,255.1 M636.6,252.2l-24.5,19.7l13.4,25.6
						c0.5,0.9,0.6,2.1,0.2,3c-0.4,1-1.2,1.8-2.2,2.1l-45.4,15.6l-8.2,26.9l30.5,25.4c0.5,0.4,0.8,0.9,1.1,1.5l8.7,22.5l48,11.7
						c0.4,0.1,0.8,0.3,1.1,0.5l27.2,17.5c4.3-4,7.2-6.4,7.2-6.4l32.3-25.6c0,0-29.6-49.8-21.6-55.2c1.8-1.2,6-1.7,11.4-1.7
						c19,0,53.2,5.7,53.2,5.7s3.5,0.4,8.6,0.4c11.1,0,29.8-1.9,37.2-13.9c10.5-17.1-20.1-72.8-32.8-72.8c-0.3,0-0.6,0-0.9,0.1
						c-12.1,2.7-94.3,56.6-98.3,56.6C680.2,311.3,654.7,278.3,636.6,252.2"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_37_" x="632.2" y="369.3" width="17" height="15"/>
							</defs>
							<clipPath id="SVGID_38_">
								<use xlink:href="#SVGID_37_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st31" d="M634.8,372.8c-0.1,1.9-0.6,3.8-1.5,5.5"/>
							<path class="st31" d="M643.3,370.3c-1.5,3.5-2.6,7.2-3.3,10.9"/>
							<path class="st31" d="M648.2,376.8c-1.2,2.2-2.4,4.3-3.6,6.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_39_" x="649.2" y="302.1" width="15" height="12.6"/>
							</defs>
							<clipPath id="SVGID_40_">
								<use xlink:href="#SVGID_39_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st33" d="M650.2,308.5c0,1.4,0,2.7,0,4.1c0,0.4,0,0.8,0.3,1c0.3,0.2,0.8-0.3,0.5-0.5"/>
							<path class="st33" d="M656.8,303.1c-0.5,2.9-0.2,5.8,0.8,8.6"/>
							<path class="st33" d="M663.2,308.5c-0.4,1.5-0.6,3-0.5,4.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_41_" x="789.4" y="301.8" width="16.4" height="22.5"/>
							</defs>
							<clipPath id="SVGID_42_">
								<use xlink:href="#SVGID_41_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st0" d="M791.8,302.8c-1.8,6.7-1.9,13.8-0.3,20.5"/>
							<path class="st0" d="M797.8,303.8c-0.5,5.8-0.6,11.7-0.4,17.5"/>
							<path class="st0" d="M804.8,305.8c-1,5.5-2,11-2.9,16.5"/>
						</g>
					</g>
				</g>
				<line class="st9" x1="872.5" y1="636.2" x2="872.5" y2="641.2"/>
				<path class="st9" d="M877.3,631.7c0.4,3.8,0.8,7.6,1.2,11.5"/>
				<path class="st9" d="M884.4,635.2c-0.2,1.8-0.3,3.7-0.5,5.5"/>
				<g>
					<path class="st24" d="M289.1,688.1c2.3-15.5,1.8-25.6-1.4-29.8c-7.9-10.6-123-56.2-134.4-60.7c5-33.9,17.9-119.9,20-124.2
						c1.3-2.6,21.5-11.2,36.2-17.4c17.2-7.3,27-11.5,28.4-13.5c2.7-4.1-10.4-107-13.2-129.4l34.3-22.4l32.5-4.1l1.7-2.4l44.8,27.5
						l-32.5,25.5c-1.6,1.2-2.2,3.4-1.5,5.2L359,494v111.6l-21.9,67.1L289.1,688.1z"/>
					<path d="M293.5,285.6l42.8,26.3L305,336.5c-1.9,1.5-2.7,4.1-1.8,6.4L358,494.2l0,24.9l0,0.1l0,0v86.3l-21.7,66.4l-46,14.7
						c2.1-15.1,1.5-24.6-1.8-28.9c-1.3-1.8-5.4-7.2-71.2-35c-28.4-12-56.3-23.1-62.9-25.7c7-47.7,17.8-118.6,19.8-123.1
						c1.9-2.6,22.3-11.2,35.7-16.9c19.8-8.4,27.4-11.7,28.8-13.9c0.8-1.2,2.1-3.1-5.4-67.5c-3.3-27.9-6.8-55.8-7.6-61.9l33.6-22l31.9-4
						l0.9-0.1l0.5-0.7L293.5,285.6 M293,282.9l-2,2.8l-32.3,4l-35,22.9c0,0,16.2,125.3,13.5,129.3s-62,25.6-64.7,31
						c-2.7,5.4-20.2,125.3-20.2,125.3s126.6,49.8,134.7,60.6c3.7,4.9,2.9,17.9,0.9,30.6l50.1-16l22.1-67.7v-86.7v0v-25.3l-55-151.6
						c-0.5-1.5-0.1-3.1,1.2-4.1l33.6-26.4L293,282.9z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_43_" x="239.2" y="526.9" width="14.5" height="8.5"/>
							</defs>
							<clipPath id="SVGID_44_">
								<use xlink:href="#SVGID_43_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st12" d="M240.2,528.4c0.3,2,0.5,4,0.8,6"/>
							<line class="st12" x1="247.2" y1="527.9" x2="247.2" y2="533.4"/>
							<line class="st12" x1="252.7" y1="528.9" x2="252.7" y2="532.9"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_45_" x="245" y="315.1" width="15.4" height="13.6"/>
							</defs>
							<clipPath id="SVGID_46_">
								<use xlink:href="#SVGID_45_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st17" d="M246,321.1c0,2.4,0.9,4.7,2.4,6.6"/>
							<path class="st17" d="M251.9,316.1c0,2.9,0.5,5.8,1.5,8.5"/>
							<path class="st17" d="M258.9,316.6c-0.3,2.5-0.1,5,0.4,7.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_47_" x="301.6" y="435.8" width="16.4" height="22.5"/>
							</defs>
							<clipPath id="SVGID_48_">
								<use xlink:href="#SVGID_47_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st27" d="M304,436.8c-1.8,6.7-1.9,13.8-0.3,20.5"/>
							<path class="st27" d="M310,437.8c-0.5,5.8-0.6,11.7-0.4,17.5"/>
							<path class="st27" d="M317,439.8c-1,5.5-2,11-2.9,16.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_49_" x="296.8" y="630.2" width="14" height="13.5"/>
							</defs>
							<clipPath id="SVGID_50_">
								<use xlink:href="#SVGID_49_"  style="overflow:visible;"/>
							</clipPath>
							<line class="st28" x1="297.8" y1="635.7" x2="297.8" y2="640.7"/>
							<path class="st28" d="M302.7,631.2c0.4,3.8,0.8,7.6,1.2,11.5"/>
							<path class="st28" d="M309.8,634.7c-0.2,1.8-0.3,3.7-0.5,5.5"/>
						</g>
					</g>
				</g>
				<g>
					<polygon class="st24" points="368.4,603.6 368.4,524.7 450.2,540.6 472.5,566.3 393.1,617.1 	"/>
					<path d="M369.4,525.9l80.3,15.6L471,566l-77.9,49.9l-23.8-13V525.9z M367.4,523.5v80.7l25.8,14.1l80.8-51.8l-23.3-26.8L367.4,523.5
						z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_51_" x="428.8" y="556.6" width="14" height="13.5"/>
							</defs>
							<clipPath id="SVGID_52_">
								<use xlink:href="#SVGID_51_"  style="overflow:visible;"/>
							</clipPath>
							<line class="st35" x1="429.8" y1="562.1" x2="429.8" y2="567.1"/>
							<path class="st35" d="M434.7,557.6c0.4,3.8,0.8,7.6,1.2,11.5"/>
							<path class="st35" d="M441.8,561.1c-0.2,1.8-0.3,3.7-0.5,5.5"/>
						</g>
					</g>
				</g>
				<path class="st4" d="M675.8,701.1c-0.9,1.5-1.5,3.2-1.8,4.9"/>
				<path class="st4" d="M683.3,696.6c-1,4-1.9,8-2.9,12"/>
				<path class="st4" d="M688.3,704.6c-0.5,1.8-1,3.7-1.5,5.5"/>
				<line class="st4" x1="296.9" y1="56.4" x2="296.9" y2="62.4"/>
				<line class="st4" x1="301.9" y1="54.9" x2="301.9" y2="62.4"/>
				<path class="st4" d="M308.4,55.9c0.2,1.5,0.1,3.1-0.5,4.5"/>
				<line class="st4" x1="750.4" y1="182.7" x2="750.4" y2="184.7"/>
				<path class="st4" d="M759,177.7c-0.4,3.8-1.4,7.5-3,11"/>
				<path class="st4" d="M762,183.7c-0.1,2.6-0.8,5.2-2,7.5"/>
				<path class="st4" d="M859,217.1c-0.3,2-0.1,4.1,0.4,6"/>
				<path class="st4" d="M865,212.1c0.5,3.8,1.1,7.7,1.6,11.5"/>
				<path class="st4" d="M872.5,217.1c-0.2,1-0.3,2-0.5,3"/>
				<path class="st4" d="M774.2,404.5c0.2,1.7,0.1,3.4-0.4,5"/>
				<path class="st4" d="M780.2,402.5c-0.4,2.7-0.7,5.3-1.1,8"/>
				<path class="st4" d="M785.2,406.5c-0.2,1.7-0.3,3.3-0.5,5"/>
				<path class="st9" d="M859.4,474.5c0.3,2.3,1.1,4.6,2.4,6.6"/>
				<path class="st9" d="M866.9,471.1c0.8,2.5,1.7,5,2.5,7.5"/>
				<path class="st9" d="M873.9,469.5c0.7,2.5,1.3,5,2,7.5"/>
				<path class="st9" d="M986,517.7c-0.9,1.5-1.5,3.2-1.8,4.9"/>
				<path class="st9" d="M993.5,513.2c-1,4-1.9,8-2.9,12"/>
				<path class="st9" d="M998.5,521.2c-0.5,1.8-1,3.7-1.5,5.5"/>
				<g>
					<path class="st24" d="M298.7,276.7l33.8-47.4l-18.9-58c5.4-8.6,71.6-114,73.9-119.6c2.6-2.3,36.8-4.9,67.8-6.2l0.1,0l0.1,0
						c0.7-0.2,17.7-4.1,27.1-8.1c2.2-0.9,6.3-2.8,11.6-5.1c14.9-6.6,45.8-20.4,48.7-20.4l54.4,1.3l6.5,25.9l-18.9,47.3l0.2,0.4
						c0.2,0.4,23.5,42.2,58.4,55.7c16.4,6.3,26.9,14.8,31.2,25.3c3,7.3,2.7,15.5-0.8,23.2c-1.8,4-5.4,6-10.8,6c-9.6,0-21.4-6.4-21.5-6.5
						l-0.5-0.3l-0.5,0.3c-1.2,0.7-30.4,16.8-22,35c1.9,4,6.1,11.1,12.4,20.4l-21.6,17.4l-24.6-61.5c-0.5-1.3-1.6-2.3-3-2.7l-125.3-36.4
						c-0.4-0.1-0.9-0.2-1.3-0.2c-1.6,0-3.1,0.9-4,2.2l-57.6,95.1l-48.1,45.6L298.7,276.7z"/>
					<path d="M542.9,12.9l53.6,1.3l6.2,24.8l-18.6,46.5l-0.4,0.9l0.5,0.8c0.2,0.4,5.9,10.8,16,22.9c9.4,11.2,24.4,26.1,42.9,33.3
						c16.2,6.2,26.5,14.5,30.7,24.7c3.7,9,1.6,17.2-0.8,22.4c-1.7,3.6-4.9,5.4-9.9,5.4c-9.3,0-20.9-6.3-21-6.3l-1-0.5l-1,0.5
						c-1.3,0.7-31.2,17.3-22.4,36.3c1.9,4,5.9,10.7,12,19.8l-19.9,16l-24.1-60.3c-0.7-1.6-2-2.8-3.7-3.3l-125.3-36.4
						c-0.5-0.2-1-0.2-1.6-0.2c-2,0-3.8,1-4.8,2.7l-57.5,95l-47.5,45l-45.4-27.9l32.9-46.1l0.6-0.8l-0.3-1l-18.6-57
						c12.9-20.5,69.4-110.6,73.6-119c4-2.2,37-4.7,67.1-5.9l0.2,0l0.2,0c0.7-0.2,17.8-4.1,27.3-8.2c2.2-0.9,6.3-2.8,11.6-5.1
						C509.2,26.7,539.4,13.2,542.9,12.9 M542.9,10.9c-4,0-51.2,21.6-60.6,25.6c-9.4,4-26.9,8.1-26.9,8.1s-67.4,2.7-68.7,6.7
						c-1.3,4-74.1,119.9-74.1,119.9l18.9,57.9L297.2,277l48.5,29.8l48.8-46.2l57.7-95.2c0.7-1.1,1.9-1.8,3.1-1.8c0.3,0,0.7,0,1,0.1
						L581.6,200c1.1,0.3,2,1.1,2.4,2.2l25.1,62.8l23.4-18.9c-6-9-10.8-16.6-12.8-21c-8.1-17.5,21.6-33.7,21.6-33.7s12,6.6,22,6.6
						c5,0,9.5-1.6,11.7-6.6c6.7-14.8,4-36.4-31-49.8c-35-13.5-57.9-55.2-57.9-55.2l18.9-47.2l-6.7-26.9L542.9,10.9z"/>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_53_" x="346.6" y="229.5" width="16.7" height="13.8"/>
							</defs>
							<clipPath id="SVGID_54_">
								<use xlink:href="#SVGID_53_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st7" d="M347.6,236.6c1.6,1.7,3,3.6,3.9,5.7"/>
							<path class="st7" d="M350.2,230.5c2.9,3,5.2,6.5,6.9,10.3"/>
							<path class="st7" d="M359.3,232.5c1.4,1.8,2.4,3.8,3,6"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_55_" x="402.7" y="70.9" width="17" height="15"/>
							</defs>
							<clipPath id="SVGID_56_">
								<use xlink:href="#SVGID_55_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st14" d="M405.2,74.3c-0.1,1.9-0.6,3.8-1.5,5.5"/>
							<path class="st14" d="M413.7,71.9c-1.5,3.5-2.6,7.2-3.3,10.9"/>
							<path class="st14" d="M418.7,78.3c-1.2,2.2-2.4,4.3-3.6,6.5"/>
						</g>
					</g>
					<g class="st22">
						<g>
							<defs>
								<rect id="SVGID_57_" x="546.3" y="100.7" width="14.6" height="24.5"/>
							</defs>
							<clipPath id="SVGID_58_">
								<use xlink:href="#SVGID_57_"  style="overflow:visible;"/>
							</clipPath>
							<path class="st20" d="M547.3,103.1c1.8,6.5,2.9,13.3,3.2,20.1"/>
							<path class="st20" d="M552.9,101.7c1.4,6.6,2.1,13.3,2.3,20"/>
							<path class="st20" d="M558.9,103.1c0.8,7,1.1,14,0.9,21"/>
						</g>
					</g>
				</g>
				<g>
					<path class="st24" d="M580.8,549.6l8.3-9.9l68.5-50c10.5,15.8,33.5,30.8,43.8,37l-10.8,27.6L580.8,549.6z"/>
					<g>
						<path d="M657.4,491.1c4.5,6.4,16.2,19.9,42.8,36.1L690,553.4l-107-4.7l6.9-8.2L657.4,491.1 M657.9,488.3L588.5,539l-9.7,11.5
							l112.5,4.9l11.2-28.5c0.1-0.2,0.2-0.3,0.3-0.5C693.8,521,668.5,504.9,657.9,488.3"/>
						<g class="st22">
							<g>
								<defs>
									<rect id="SVGID_59_" x="671.2" y="522.2" width="14.6" height="24.5"/>
								</defs>
								<clipPath id="SVGID_60_">
									<use xlink:href="#SVGID_59_"  style="overflow:visible;"/>
								</clipPath>
								<path class="st21" d="M672.2,524.6c1.8,6.5,2.9,13.3,3.2,20.1"/>
								<path class="st21" d="M677.8,523.2c1.4,6.6,2.1,13.3,2.3,20"/>
								<path class="st21" d="M683.9,524.6c0.8,7,1.1,14,0.9,21"/>
							</g>
						</g>
					</g>
				</g>
				<path class="st9" d="M130.2,299c1.6,1.7,3,3.6,3.9,5.7"/>
				<path class="st9" d="M132.8,292.9c2.9,3,5.2,6.5,6.9,10.3"/>
				<path class="st9" d="M141.9,294.9c1.4,1.8,2.4,3.8,3,6"/>
				<path class="st4" d="M111.9,472.4c-0.1,1.9-0.6,3.8-1.5,5.5"/>
				<path class="st4" d="M120.4,469.9c-1.5,3.5-2.6,7.2-3.3,10.9"/>
				<path class="st4" d="M125.3,476.3c-1.2,2.2-2.4,4.3-3.6,6.5"/>
				<path class="st4" d="M555.4,622c-0.1,1.9-0.6,3.8-1.5,5.5"/>
				<path class="st4" d="M563.9,619.5c-1.5,3.5-2.6,7.2-3.3,10.9"/>
				<path class="st4" d="M568.9,626c-1.2,2.2-2.4,4.3-3.6,6.5"/>
				<path class="st9" d="M239.7,229.7c1.8,6.5,2.9,13.3,3.2,20.1"/>
				<path class="st9" d="M245.2,228.3c1.4,6.6,2.1,13.3,2.3,20"/>
				<path class="st9" d="M251.3,229.7c0.8,7,1.1,14,0.9,21"/>
				<path class="st32" d="M435.8,736.1c0.3-8.9,3.2-17.7,8.3-24.9c0.2-0.3,0.5-0.6,0.8-0.8c0.9-0.4,1.8,0.6,2,1.5
					c0.2,1.2-0.1,2.3-0.5,3.5c-0.9,2.9-1.8,5.8-2.7,8.7c1.7-3.9,3.5-7.8,5.2-11.7c0.4-0.9,1-2.4,1.8-2c3,1.8-0.3,6.8-1.6,10
					c-1.2,3-2.2,6.1-3,9.3c2.1-5.3,4.3-10.6,6.7-15.8c0.3-0.6,0.7-1.3,1.3-1.2c0.9,0.1,0.9,1.4,0.7,2.3c-1.4,4.3-2.8,8.6-4.2,12.8
					c1-1.9,2-3.8,3.1-5.7c1.1-2.1,2.3-4.2,3.9-6c0.4-0.5,1-1,1.7-0.9c0.7,0.1,1.2,0.8,1.3,1.5c0.1,0.7-0.2,1.4-0.5,2.1
					c-1.5,3.7-2.9,7.4-4.4,11.1c2.1-3.6,4.2-7.3,6.2-10.9c0.2-0.3,0.3-0.6,0.6-0.8c0.7-0.4,1.6,0.2,1.8,1c0.2,0.8-0.1,1.6-0.4,2.3
					c-2.1,5-4.2,10.1-6.2,15.1c-0.1,0.2-0.2,0.4-0.4,0.5c-0.2,0.2-0.6,0.2-0.8,0.1C449.3,736.9,442.8,735.8,435.8,736.1"/>
				<path class="st1" d="M435.8,736.1c0.3-8.9,3.2-17.7,8.3-24.9c0.2-0.3,0.5-0.6,0.8-0.8c0.9-0.4,1.8,0.6,2,1.5
					c0.2,1.2-0.1,2.3-0.5,3.5c-0.9,2.9-1.8,5.8-2.7,8.7c1.7-3.9,3.5-7.8,5.2-11.7c0.4-0.9,1-2.4,1.8-2c3,1.8-0.3,6.8-1.6,10
					c-1.2,3-2.2,6.1-3,9.3c2.1-5.3,4.3-10.6,6.7-15.8c0.3-0.6,0.7-1.3,1.3-1.2c0.9,0.1,0.9,1.4,0.7,2.3c-1.4,4.3-2.8,8.6-4.2,12.8
					c1-1.9,2-3.8,3.1-5.7c1.1-2.1,2.3-4.2,3.9-6c0.4-0.5,1-1,1.7-0.9c0.7,0.1,1.2,0.8,1.3,1.5c0.1,0.7-0.2,1.4-0.5,2.1
					c-1.5,3.7-2.9,7.4-4.4,11.1c2.1-3.6,4.2-7.3,6.2-10.9c0.2-0.3,0.3-0.6,0.6-0.8c0.7-0.4,1.6,0.2,1.8,1c0.2,0.8-0.1,1.6-0.4,2.3
					c-2.1,5-4.2,10.1-6.2,15.1c-0.1,0.2-0.2,0.4-0.4,0.5c-0.2,0.2-0.6,0.2-0.8,0.1C449.3,736.9,442.8,735.8,435.8,736.1z"/>
				<path class="st5" d="M663.9,230.6c-0.5-3.4-1-8-1.5-11.4c-0.1-0.6-0.1-1.3,0.3-1.6c0.4-0.3,1-0.2,1.4,0.1c0.4,0.3,0.6,0.7,0.8,1.2
					c1,2.3,1.4,4.8,1.8,7.3c0-2.5,0.1-5,0.1-7.5c0-0.9,0.1-1.9,0.7-2.5c0.2-0.2,0.5-0.4,0.8-0.3c0.6,0,0.9,0.7,1,1.3
					c0.7,2.6,1.1,5.3,1.2,8l1.3-6.6c0.3-1.3,0.9-3,2.2-3.1c0.6,2.7,0.6,5.6-0.1,8.3c0.7-2,1.4-4,2.9-5.5c0.3-0.3,0.8-0.6,1.1-0.3
					c0.1,0.1,0.2,0.3,0.3,0.4c0.7,2.1-0.5,4.2-1.3,6.2c-0.8,1.9-1.4,4-1.6,6.1C671.5,230.8,667.7,230.9,663.9,230.6"/>
				<path class="st1" d="M663.9,230.6c-0.5-3.4-1-8-1.5-11.4c-0.1-0.6-0.1-1.3,0.3-1.6c0.4-0.3,1-0.2,1.4,0.1c0.4,0.3,0.6,0.7,0.8,1.2
					c1,2.3,1.4,4.8,1.8,7.3c0-2.5,0.1-5,0.1-7.5c0-0.9,0.1-1.9,0.7-2.5c0.2-0.2,0.5-0.4,0.8-0.3c0.6,0,0.9,0.7,1,1.3
					c0.7,2.6,1.1,5.3,1.2,8l1.3-6.6c0.3-1.3,0.9-3,2.2-3.1c0.6,2.7,0.6,5.6-0.1,8.3c0.7-2,1.4-4,2.9-5.5c0.3-0.3,0.8-0.6,1.1-0.3
					c0.1,0.1,0.2,0.3,0.3,0.4c0.7,2.1-0.5,4.2-1.3,6.2c-0.8,1.9-1.4,4-1.6,6.1C671.5,230.8,667.7,230.9,663.9,230.6z"/>
				<path class="st32" d="M158.8,778.8c2.2,6.2,4.4,12.4,6.7,18.6c0.2,0.5,0.4,1.1,0.9,1.4c0.4,0.3,1,0.3,1.5,0.3
					c6.7-0.2,13.4-0.4,20.2-0.5c-1.7-8.9,8.2-16.4,7.9-25.5c-4.6,4.4-9.3,8.9-13.9,13.3c0.3-6-1-12.1-3.8-17.5l-1.8,17.6
					c-6.4-4.8-4-16.2-10.2-21.2c0.9,6.9,2.5,13.6,4.6,20.2c-2.9-5.2-6.7-10-11.1-14.1"/>
				<path class="st1" d="M158.8,778.8c2.2,6.2,4.4,12.4,6.7,18.6c0.2,0.5,0.4,1.1,0.9,1.4c0.4,0.3,1,0.3,1.5,0.3
					c6.7-0.2,13.4-0.4,20.2-0.5c-1.7-8.9,8.2-16.4,7.9-25.5c-4.6,4.4-9.3,8.9-13.9,13.3c0.3-6-1-12.1-3.8-17.5l-1.8,17.6
					c-6.4-4.8-4-16.2-10.2-21.2c0.9,6.9,2.5,13.6,4.6,20.2c-2.9-5.2-6.7-10-11.1-14.1"/>
				<path class="st5" d="M834,604.3c0.5,1.9,1,3.7,1.5,5.6c0.1,0.3,0.2,0.6,0.4,0.8c0.3,0.2,0.7,0.2,1,0.2c4.3-0.2,8.6-0.4,12.9-0.6
					c0.4-2.9,0.8-5.7,1.3-8.6c0.1-0.8-0.1-2.1-1-1.9c-0.6,1.5-1.1,3-1.7,4.5c-0.1,0.3-0.3,0.6-0.5,0.8c-0.6,0.3-1.2-0.4-1.4-1
					c-1.1-2.8,0.1-6.5-2.2-8.4c-0.4,2.5-0.7,5.1-1.1,7.6c-0.1,0.5-0.2,1.1-0.7,1.3c-0.6,0.2-1.1-0.6-1.4-1.2c-0.8-2-1.6-4-2.5-6
					c-0.5,2.8-0.2,5.8,0.8,8.5c-1.4-2.5-3.3-4.8-5.5-6.6c-1.1,2.3,2.6,5.1,1.1,7.2"/>
				<path class="st1" d="M834,604.3c0.5,1.9,1,3.7,1.5,5.6c0.1,0.3,0.2,0.6,0.4,0.8c0.3,0.2,0.7,0.2,1,0.2c4.3-0.2,8.6-0.4,12.9-0.6
					c0.4-2.9,0.8-5.7,1.3-8.6c0.1-0.8-0.1-2.1-1-1.9c-0.6,1.5-1.1,3-1.7,4.5c-0.1,0.3-0.3,0.6-0.5,0.8c-0.6,0.3-1.2-0.4-1.4-1
					c-1.1-2.8,0.1-6.5-2.2-8.4c-0.4,2.5-0.7,5.1-1.1,7.6c-0.1,0.5-0.2,1.1-0.7,1.3c-0.6,0.2-1.1-0.6-1.4-1.2c-0.8-2-1.6-4-2.5-6
					c-0.5,2.8-0.2,5.8,0.8,8.5c-1.4-2.5-3.3-4.8-5.5-6.6c-1.1,2.3,2.6,5.1,1.1,7.2"/>
				<path class="st32" d="M697.6,794.6c5.8,0.8,11.5,1.6,17.3,2.3c2.6-7.5,4.1-15.3,4.6-23.2c-3.4,3.1-6.2,6.9-8.1,11.1
					c-1.5-5.7-2.9-11.4-4.4-17.1c-0.7,4-1.4,8.1-2.1,12.1c-0.1,0.7-0.3,1.4-1,1.6c-0.7,0.2-1.3-0.5-1.7-1.2c-2.7-4.4-5.4-8.7-8.1-13.1
					c-1.2,4.4-0.8,9.3,1.3,13.4c-3.6-3.2-6.8-6.9-9.3-11c0.7,7.6,3.8,15,8.6,20.8"/>
				<path class="st1" d="M697.6,794.6c5.8,0.8,11.5,1.6,17.3,2.3c2.6-7.5,4.1-15.3,4.6-23.2c-3.4,3.1-6.2,6.9-8.1,11.1
					c-1.5-5.7-2.9-11.4-4.4-17.1c-0.7,4-1.4,8.1-2.1,12.1c-0.1,0.7-0.3,1.4-1,1.6c-0.7,0.2-1.3-0.5-1.7-1.2c-2.7-4.4-5.4-8.7-8.1-13.1
					c-1.2,4.4-0.8,9.3,1.3,13.4c-3.6-3.2-6.8-6.9-9.3-11c0.7,7.6,3.8,15,8.6,20.8"/>
				<path class="st5" d="M371.1,25.4c1.2,3.7,1.9,7.6,2,11.5c0,0.2,0,0.4,0.2,0.6c0.1,0.1,0.3,0.1,0.5,0.1c3.9-0.1,7.8-0.1,11.7-0.2
					c0.2,0,0.4,0,0.6-0.1c0.2-0.1,0.2-0.3,0.3-0.5c2.1-5.9,3.5-12.1,4.3-18.3c0.1-0.5,0.1-1.1-0.4-1.4c-0.5-0.3-1.1,0.3-1.4,0.8
					c-1.9,3.4-2,7.5-3.8,10.8c0-2.8-0.1-5.6-0.1-8.4c0-0.4,0-0.9-0.3-1.3c-0.2-0.4-0.8-0.6-1.1-0.4c-0.3,0.2-0.4,0.6-0.4,0.9
					c-0.4,3.4,0.9,7.3-1.2,9.9c-0.9-2.8-1.8-5.6-2.7-8.3c-0.2-0.5-0.5-1.1-1-1c-0.2,0-0.4,0.2-0.6,0.4c-1,1.3-0.9,3.1-0.7,4.7
					c0.3,1.6,0.7,3.3,0.2,4.9c-0.5-1.5-1-3-1.5-4.6c-0.6-1.9-1.3-4-2.8-5.4c-0.4,2-0.6,4-0.5,6"/>
				<path class="st1" d="M371.1,25.4c1.2,3.7,1.9,7.6,2,11.5c0,0.2,0,0.4,0.2,0.6c0.1,0.1,0.3,0.1,0.5,0.1c3.9-0.1,7.8-0.1,11.7-0.2
					c0.2,0,0.4,0,0.6-0.1c0.2-0.1,0.2-0.3,0.3-0.5c2.1-5.9,3.5-12.1,4.3-18.3c0.1-0.5,0.1-1.1-0.4-1.4c-0.5-0.3-1.1,0.3-1.4,0.8
					c-1.9,3.4-2,7.5-3.8,10.8c0-2.8-0.1-5.6-0.1-8.4c0-0.4,0-0.9-0.3-1.3c-0.2-0.4-0.8-0.6-1.1-0.4c-0.3,0.2-0.4,0.6-0.4,0.9
					c-0.4,3.4,0.9,7.3-1.2,9.9c-0.9-2.8-1.8-5.6-2.7-8.3c-0.2-0.5-0.5-1.1-1-1c-0.2,0-0.4,0.2-0.6,0.4c-1,1.3-0.9,3.1-0.7,4.7
					c0.3,1.6,0.7,3.3,0.2,4.9c-0.5-1.5-1-3-1.5-4.6c-0.6-1.9-1.3-4-2.8-5.4c-0.4,2-0.6,4-0.5,6"/>
				<path class="st32" d="M987.5,756.1c-5.4-5.1-9.3-11.7-11.3-18.8c-0.2-0.6-0.3-1.2,0-1.7c0.7-1.1,2.4,0,3.1,1.1
					c2.2,3.2,4.4,6.4,6.5,9.6c0.7-3,0.8-6.1,0.2-9.1c-0.3-1.4-0.4-3.3,0.9-3.7c3,2.6,2,7.8,4.5,10.8c0.2,0.3,0.6,0.6,0.9,0.6
					c0.8,0.1,1.2-0.9,1.3-1.7c0.7-3.8,1.3-7.5,2-11.3c3.2,1.8,0.9,7.4,3.4,10.2c0.3,0.3,0.6,0.6,1,0.6c0.7,0.1,1.3-0.6,1.7-1.2
					c1.4-2.1,2.3-4.5,2.8-7c0.1-0.6,0.3-1.3,0.8-1.7c0.7-0.5,1.8-0.1,2.2,0.7c0.4,0.7,0.4,1.7,0.4,2.5c-0.3,5.1-1.9,10.3-5.4,14.1
					c-3.5,3.8-9,5.9-13.9,4.4"/>
				<path class="st1" d="M987.5,756.1c-5.4-5.1-9.3-11.7-11.3-18.8c-0.2-0.6-0.3-1.2,0-1.7c0.7-1.1,2.4,0,3.1,1.1
					c2.2,3.2,4.4,6.4,6.5,9.6c0.7-3,0.8-6.1,0.2-9.1c-0.3-1.4-0.4-3.3,0.9-3.7c3,2.6,2,7.8,4.5,10.8c0.2,0.3,0.6,0.6,0.9,0.6
					c0.8,0.1,1.2-0.9,1.3-1.7c0.7-3.8,1.3-7.5,2-11.3c3.2,1.8,0.9,7.4,3.4,10.2c0.3,0.3,0.6,0.6,1,0.6c0.7,0.1,1.3-0.6,1.7-1.2
					c1.4-2.1,2.3-4.5,2.8-7c0.1-0.6,0.3-1.3,0.8-1.7c0.7-0.5,1.8-0.1,2.2,0.7c0.4,0.7,0.4,1.7,0.4,2.5c-0.3,5.1-1.9,10.3-5.4,14.1
					c-3.5,3.8-9,5.9-13.9,4.4"/>
				<path class="st32" d="M262.1,161.5c-2.4,0.4-4.8,0.9-7.2,0.6c-2.4-0.3-4.8-1.4-6.1-3.4c-0.7-1.1-1-2.5-1.4-3.8
					c-0.8-3.1-1.5-6.2-2.3-9.2c-0.1-0.3-0.2-0.7,0-1c0.4-0.9,1.7-0.2,2.3,0.5c1.5,1.7,3,3.4,4.5,5.1c0.5,0.6,1.2,1.3,2,1.2
					c1.1-0.1,1.6-1.3,1.9-2.4c0.3-1.4,0.5-2.8,0.5-4.2c0-1.5-0.1-3.2,0.5-4.6c0.6-1.4,2.1-2.7,3.6-2.2c3.2,1,1,6.9,3.7,8.9
					c2.2-3.5,4.5-7,6.7-10.5c1.2,3.9,2,8,2.4,12.1c1.8-2,3.6-3.9,5.4-5.9c1-1.1,2.6-2.3,3.8-1.4c1.1,0.9,0.5,2.6-0.1,3.8
					c-0.9,1.7-1.8,3.4-2.8,5.1c-0.3,0.5-0.5,1-0.4,1.6c0.3,1,1.8,0.9,2.7,0.5c0.9-0.4,2.1-0.9,2.9-0.2c-3.8,7.8-13.5,12.3-21.9,10.2"/>
				<path class="st1" d="M262.1,161.5c-2.4,0.4-4.8,0.9-7.2,0.6c-2.4-0.3-4.8-1.4-6.1-3.4c-0.7-1.1-1-2.5-1.4-3.8
					c-0.8-3.1-1.5-6.2-2.3-9.2c-0.1-0.3-0.2-0.7,0-1c0.4-0.9,1.7-0.2,2.3,0.5c1.5,1.7,3,3.4,4.5,5.1c0.5,0.6,1.2,1.3,2,1.2
					c1.1-0.1,1.6-1.3,1.9-2.4c0.3-1.4,0.5-2.8,0.5-4.2c0-1.5-0.1-3.2,0.5-4.6c0.6-1.4,2.1-2.7,3.6-2.2c3.2,1,1,6.9,3.7,8.9
					c2.2-3.5,4.5-7,6.7-10.5c1.2,3.9,2,8,2.4,12.1c1.8-2,3.6-3.9,5.4-5.9c1-1.1,2.6-2.3,3.8-1.4c1.1,0.9,0.5,2.6-0.1,3.8
					c-0.9,1.7-1.8,3.4-2.8,5.1c-0.3,0.5-0.5,1-0.4,1.6c0.3,1,1.8,0.9,2.7,0.5c0.9-0.4,2.1-0.9,2.9-0.2c-3.8,7.8-13.5,12.3-21.9,10.2"/>
				<path class="st32" d="M895.6,391.7c-2.4,0.4-4.8,0.9-7.2,0.6c-2.4-0.3-4.8-1.4-6.1-3.4c-0.7-1.1-1-2.5-1.4-3.8
					c-0.8-3.1-1.5-6.2-2.3-9.2c-0.1-0.3-0.2-0.7,0-1c0.4-0.9,1.7-0.2,2.3,0.5c1.5,1.7,3,3.4,4.5,5.1c0.5,0.6,1.2,1.3,2,1.2
					c1.1-0.1,1.7-1.3,1.9-2.4c0.3-1.4,0.5-2.8,0.5-4.2c0-1.5-0.1-3.2,0.5-4.6c0.6-1.4,2.1-2.7,3.6-2.2c3.2,1,1,6.9,3.7,8.9
					c2.2-3.5,4.5-7,6.7-10.5c1.2,3.9,2,8,2.4,12.1c1.8-2,3.6-3.9,5.4-5.9c1-1.1,2.6-2.3,3.8-1.4c1.1,0.9,0.5,2.6-0.1,3.8
					c-0.9,1.7-1.8,3.4-2.8,5.1c-0.3,0.5-0.5,1-0.4,1.6c0.3,1,1.8,0.9,2.7,0.5c0.9-0.4,2.1-0.9,2.9-0.2c-3.8,7.8-13.5,12.3-21.9,10.2"/>
				<path class="st1" d="M895.6,391.7c-2.4,0.4-4.8,0.9-7.2,0.6c-2.4-0.3-4.8-1.4-6.1-3.4c-0.7-1.1-1-2.5-1.4-3.8
					c-0.8-3.1-1.5-6.2-2.3-9.2c-0.1-0.3-0.2-0.7,0-1c0.4-0.9,1.7-0.2,2.3,0.5c1.5,1.7,3,3.4,4.5,5.1c0.5,0.6,1.2,1.3,2,1.2
					c1.1-0.1,1.7-1.3,1.9-2.4c0.3-1.4,0.5-2.8,0.5-4.2c0-1.5-0.1-3.2,0.5-4.6c0.6-1.4,2.1-2.7,3.6-2.2c3.2,1,1,6.9,3.7,8.9
					c2.2-3.5,4.5-7,6.7-10.5c1.2,3.9,2,8,2.4,12.1c1.8-2,3.6-3.9,5.4-5.9c1-1.1,2.6-2.3,3.8-1.4c1.1,0.9,0.5,2.6-0.1,3.8
					c-0.9,1.7-1.8,3.4-2.8,5.1c-0.3,0.5-0.5,1-0.4,1.6c0.3,1,1.8,0.9,2.7,0.5c0.9-0.4,2.1-0.9,2.9-0.2c-3.8,7.8-13.5,12.3-21.9,10.2"/>
				<path class="st3" d="M108.6,638.4c-9.3,0-13.8-0.7-15.5-2.5c-0.5-0.5-0.8-1.2-0.8-1.9c0.1-3,3.1-4,4.9-4.6c0.3-0.1,0.6-0.2,0.8-0.3
					c-1.9-2.6-6.3-12.7-5.4-21.3c0.5-4.9,2.7-8.7,6.4-11.1c3.5-2.3,7.1-3.4,10.7-3.4c6.7,0,11.6,3.8,13.7,5.7c0.9-1.6,2.9-4.1,5.9-5.3
					c1.4-0.5,2.9-0.8,4.3-0.8c1.9,0,3.5,0.5,4.7,1c-1-5-2-16.7,8.7-22.4c4.1-2.2,8.4-3.3,12.7-3.3c10.8,0,20,7.3,22.9,18.1
					c2.2,8.2-1.9,17.2-4.7,22.1c0.8-0.2,1.6-0.4,2.6-0.4c1.7,0,3.5,0.5,5.3,1.4c2.8,1.4,3.7,5,4,7.7c1.3-1.3,3.4-2.5,6.7-2.5
					c0.9,0,1.8,0.1,2.7,0.3c3.5,0.6,6.5,3.1,8.2,6.7c1.2,2.5,1.5,5.2,0.9,7.2c3.4,1.3,3.9,2.8,3.7,3.9c-0.4,2.7-5.5,3.7-10.2,3.7
					c-3.8,0-10.8,0.2-19.6,0.4c-12.2,0.3-27.5,0.7-43.8,0.9c-5.2,0.1-10.3,0.2-15.2,0.4C118,638.3,112.9,638.4,108.6,638.4L108.6,638.4z
					"/>
				<path d="M159.7,569.2c10.3,0,19.2,6.9,22,17.3c3,11.4-6.9,24.9-6.9,24.9s2-2.4,5.7-2.4c1.4,0,3,0.3,4.8,1.3c4,2,3.5,9.8,3.5,9.8
					s1.6-4.5,7.6-4.5c0.8,0,1.6,0.1,2.5,0.2c6.9,1.3,10,10,8,13.6c7.5,2.4,4,6-5.1,6c-9.1,0-35,1-63.4,1.3c-10.9,0.1-21.7,0.7-30,0.7
					c-9.2,0-15.3-0.7-15.2-3.4c0.1-4.1,7.5-3.5,5.8-5.3c-1.8-1.8-11.9-23.2,0.5-31.2c3.7-2.4,7.1-3.2,10.2-3.2c8.3,0,13.9,6.3,13.9,6.3
					s2-4.5,6-6c1.4-0.5,2.8-0.7,3.9-0.7c3.8,0,6.3,2.1,6.3,2.1s-5.6-16.5,7.6-23.6C151.6,570.3,155.7,569.2,159.7,569.2 M159.7,567.2v2
					V567.2c-4.5,0-8.9,1.2-13.2,3.5c-9.4,5-10.6,14.8-9.5,21.7c-1-0.3-2.1-0.5-3.3-0.5c-1.6,0-3.1,0.3-4.7,0.9c-2.7,1-4.6,3.1-5.7,4.7
					c-2.5-2.1-7.3-5.2-13.4-5.2c-3.8,0-7.6,1.2-11.3,3.6c-4,2.6-6.3,6.6-6.9,11.8c-0.8,7.9,2.7,17,4.9,20.9c-2,0.7-5.1,2-5.2,5.4
					c0,1,0.3,1.9,1.1,2.7c1.9,2,6.5,2.8,16.2,2.8c4.4,0,9.4-0.2,14.8-0.3c4.9-0.1,10-0.3,15.2-0.4c16.3-0.2,31.5-0.6,43.8-0.9
					c8.8-0.2,15.7-0.4,19.6-0.4c9.4,0,10.9-3.2,11.2-4.5c0.2-1.3-0.3-3.1-3.6-4.6c0.4-2.1-0.1-4.6-1.2-7.1c-1.8-3.9-5.1-6.6-8.9-7.3
					c-1-0.2-2-0.3-2.9-0.3c-2.6,0-4.5,0.7-6,1.6c-0.5-2.6-1.7-5.4-4.3-6.7c-1.9-1-3.9-1.5-5.7-1.5c-0.2,0-0.5,0-0.7,0
					c2.7-5.3,5.8-13.5,3.8-21C180.6,574.8,171,567.2,159.7,567.2"/>
				<path class="st3" d="M886.9,299.5c-0.7,0-1.4,0-2-0.1c-5.2-0.7-9.6-4.1-11.1-8.6c-0.3-1-0.5-2-0.8-3c-0.6-2.8-1.2-5.5-3.3-6
					c-0.2-0.1-0.5-0.1-0.7-0.1c-1.2,0-2.4,0.6-3.6,1.2l-0.2,0.1c-5.2,2.6-10.8,4.1-16.6,4.7c-0.9,0.1-1.7,0.1-2.5,0.1
					c-4.1,0-7.2-1.2-9-3.5c-2.1-2.7-2.1-7,0.1-9.9c1.6-2.1,4.1-3.5,6.9-3.8c-2.3-3.9-2.6-11.3-0.6-14.8c2-3.8,6.7-8.4,11.3-9.6
					c1.8-0.5,3.7-0.7,5.6-0.7c5.3,0,10,1.8,13.2,5.1c3.4-6.5,11.5-8.8,17.8-8.8l0.3,0c6,0.1,10.6,2.4,12.2,6.2c0.9,2.1,0.8,4.4-0.2,6.7
					c-0.8,1.6-2,3.1-3.6,4.4c1-0.1,2-0.1,3-0.1c9.9,0,17.5,3.5,21.5,9.9c2.3,3.6,2.9,8.9-0.5,11.6c-1.7,1.4-3.9,1.7-5.8,1.8
					c-1.9,0.1-3.5,0.5-5.1,0.8c-1.6,0.4-3.2,0.7-4.9,0.7c-0.6,0-1.3-0.1-1.9-0.2c0,0.7-0.3,1.3-0.7,2c-0.3,0.6-0.7,1.2-1,2.1
					c-0.9,2.9-3.1,5.7-6.4,7.9C894.8,298.1,890.7,299.5,886.9,299.5"/>
				<path d="M891.3,242.7c0.1,0,0.2,0,0.3,0c4.5,0.1,9.6,1.5,11.3,5.6c2.2,5.2-2.6,10.7-8.1,12.4c-0.6,0.1-1.2,0.3-1.9,0.4
					c0.6-0.1,1.2-0.2,1.9-0.4c2.7-0.5,5.5-0.8,8.3-0.8c8.3,0,16.4,2.6,20.7,9.4c2,3.2,2.7,7.9-0.2,10.3c-1.4,1.2-3.4,1.5-5.2,1.6
					c-4.1,0.3-6.8,1.6-9.9,1.6c-1.3,0-2.6-0.2-4.2-0.8c2.6,1.9,0.6,2.4-0.4,5.5s-3.3,5.5-6,7.4c-3.2,2.2-7.1,3.7-11,3.7
					c-0.6,0-1.3,0-1.9-0.1c-4.5-0.6-8.8-3.6-10.2-7.9c-1.2-3.6-1.1-8.8-4.8-9.7c-0.3-0.1-0.6-0.1-0.9-0.1c-1.4,0-2.9,0.7-4.2,1.4
					c-5.1,2.5-10.7,4.1-16.3,4.6c-0.8,0.1-1.6,0.1-2.4,0.1c-3.1,0-6.3-0.7-8.2-3.1c-1.9-2.5-1.8-6.2,0.1-8.7c1.7-2.3,4.5-3.5,7.4-3.5
					c0.3,0,0.6,0,0.9,0c-3.4-2.6-3.9-11.6-1.9-15.3c2-3.8,6.5-8,10.6-9.1c1.7-0.4,3.5-0.7,5.3-0.7c5.2,0,10.3,1.9,13.5,6
					C876.4,245.8,884.2,242.7,891.3,242.7 M891.3,240.7c-6.1,0-14,2.2-18,8.2c-3.3-2.9-7.9-4.5-13-4.5c-2,0-3.9,0.3-5.8,0.7
					c-4.9,1.3-9.8,6.2-11.9,10.1c-1.8,3.3-2,10,0,14.6c-2.5,0.6-4.7,2-6.2,4c-2.5,3.3-2.5,8-0.1,11.1c2,2.6,5.3,3.9,9.8,3.9
					c0.8,0,1.7,0,2.6-0.1c5.9-0.6,11.6-2.2,17-4.8l0.2-0.1c1.1-0.5,2.3-1.1,3.2-1.1c0.2,0,0.3,0,0.5,0.1c1.4,0.4,1.9,2.2,2.6,5.2
					c0.2,1,0.5,2.1,0.8,3.1c1.6,4.8,6.3,8.6,11.9,9.3c0.7,0.1,1.4,0.1,2.1,0.1c4,0,8.3-1.4,12.1-4.1c3.4-2.4,5.8-5.3,6.8-8.4
					c0.2-0.8,0.6-1.3,0.9-1.9c0.3-0.5,0.5-0.9,0.7-1.4c0.4,0,0.7,0,1.1,0c1.8,0,3.4-0.4,5.1-0.8c1.5-0.3,3.1-0.7,4.9-0.8
					c2.1-0.1,4.5-0.5,6.4-2c3.8-3.1,3.2-9,0.7-12.9c-4.2-6.7-12.2-10.3-22.4-10.3c-0.1,0-0.3,0-0.4,0c0.8-0.9,1.4-1.9,1.9-2.9
					c1.2-2.5,1.2-5.1,0.2-7.5c-1.8-4.2-6.7-6.7-13.1-6.8L891.3,240.7z"/>
				<path class="st3" d="M628.9,693c-1.1,0-2.7-0.1-4-1.2c-1.2-1-1.7-2.5-2-3.9c-1-3.7-1.7-8,0.4-12c0.8-1.6,2.2-2.9,3.9-3.7
					c0.8-0.4,1.4-0.5,2.1-0.5c1.2,0,2.1,0.6,3,1.3l0.4,0.3c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1-0.1c0,0,0.1-0.1,0-0.2
					c-0.2-1.9,0.4-3.8,0.9-5.5l0.1-0.4c2.3-7.5,6.2-11.5,12.6-12.9c1.1-0.2,2.2-0.4,3.3-0.4c5.1,0,9.6,2.5,12.3,6.3
					c0.1-0.2,0.3-0.4,0.4-0.7c1.4-1.9,4.2-3.3,6.7-3.3c1.6,0,3.1,0.4,4.8,1.2c0.3,0.1,0.5,0.2,0.8,0.2c1,0,1.8-0.8,1.9-1.7
					c0.4-3.5,2.2-6.7,4.9-8.7c2-1.4,4.5-2.2,7.1-2.2c3.1,0,5.9,1,8.1,2.9c3.7,3.2,5.3,8.5,4.6,15c0,0.1,0,0.1,0,0.1c0,0,0.1,0.1,0.1,0.1
					c0,0,0.1,0,0.1-0.1c2.5-2.2,5.9-3.5,9.3-3.5c2,0,3.9,0.4,5.6,1.3c3.1,1.6,5.6,4.6,6.7,8.2c1.1,3.7,0.7,7.5-1,10.5
					c-0.1,0.2-0.2,0.5-0.2,0.7c0,0.2,0,0.2,0.6,0.4l0.2,0c1.9,0.5,3.5,2.1,4.3,4.1c0.8,2,0.7,4.3-0.3,6c-0.4,0.7-0.9,1.2-1.5,1.5
					c-0.6,0.3-1.2,0.4-2,0.4c-0.3,0-0.6,0-0.9,0c-14.4-1.1-28.2-1.6-43.3-1.6c-10.2,0-20.9,0.2-35.9,0.7c-1.6,0.1-4,0.3-6.4,0.5
					c-2.4,0.2-4.7,0.3-6.3,0.5C630.1,692.9,629.5,693,628.9,693"/>
				<path d="M688.8,646c2.7,0,5.4,0.9,7.4,2.7c3.9,3.4,4.8,8.8,4.3,14.1c-0.1,0.8,0.5,1.3,1.2,1.3c0.3,0,0.5-0.1,0.8-0.3
					c2.4-2,5.5-3.2,8.6-3.2c1.8,0,3.5,0.4,5.1,1.2c6.1,3,8.6,11.5,5.2,17.4c-0.2,0.4-0.4,0.9-0.3,1.3c0.1,1,0.8,1.1,1.5,1.3
					c3.4,1,5.3,5.6,3.4,8.6c-0.3,0.5-0.6,0.9-1.1,1.2c-0.5,0.3-1,0.3-1.5,0.3c-0.3,0-0.6,0-0.9,0c-15.4-1.2-29.3-1.6-43.3-1.6
					c-11.6,0-23.3,0.3-36,0.7c-3.2,0.3-9.5,0.7-12.7,0.9c-0.5,0-1.1,0.1-1.6,0.1c-1.2,0-2.4-0.2-3.4-1c-1-0.8-1.4-2.1-1.7-3.4
					c-1-3.7-1.6-7.7,0.3-11.3c0.7-1.4,2-2.6,3.4-3.2c0.7-0.3,1.2-0.4,1.6-0.4c1,0,1.7,0.6,2.9,1.5c0.2,0.2,0.5,0.2,0.7,0.2
					c0.6,0,1.2-0.6,1.2-1.3c-0.2-1.9,0.5-3.8,1-5.5c2-6.5,5.3-10.7,11.9-12.2c1-0.2,2.1-0.3,3.1-0.3c5.6,0,10.9,3.2,12.8,8.6
					c-1-3.2,3.2-6.2,6.6-6.2c0,0,0.1,0,0.1,0c1.5,0,2.9,0.4,4.2,1.1c0.4,0.2,0.8,0.3,1.2,0.3c1.4,0,2.7-1.1,2.9-2.6c0.4-3.1,2-6.1,4.5-8
					C684.1,646.7,686.5,646,688.8,646 M688.8,644c-2.8,0-5.6,0.9-7.7,2.4c-3,2.1-4.9,5.6-5.3,9.4c-0.1,0.5-0.5,0.9-0.9,0.9
					c-0.1,0-0.2,0-0.4-0.1c-1.8-0.8-3.4-1.2-5.1-1.3h-0.1c-2.6,0-5.4,1.3-7.1,3.3c-2.9-3.5-7.3-5.6-12.2-5.6c-1.2,0-2.4,0.1-3.6,0.4
					c-6.8,1.5-10.9,5.7-13.3,13.6l-0.1,0.4c-0.4,1.2-0.8,2.7-1,4.2c-0.8-0.5-1.6-0.9-2.7-0.9c-0.8,0-1.6,0.2-2.5,0.6
					c-1.9,0.9-3.4,2.3-4.4,4.1c-2.3,4.3-1.5,8.9-0.5,12.8c0.4,1.6,1,3.2,2.4,4.4c1.2,1,2.7,1.4,4.7,1.4c0.6,0,1.2,0,1.8-0.1
					c1.6-0.1,4-0.3,6.3-0.5c2.3-0.2,4.7-0.3,6.3-0.5c15-0.5,25.7-0.7,35.8-0.7c15.1,0,28.8,0.5,43.2,1.6c0.3,0,0.7,0,1,0
					c1,0,1.8-0.2,2.5-0.6c0.7-0.4,1.3-1,1.9-1.9c1.2-2,1.3-4.5,0.4-6.9c-0.9-2.3-2.7-4-4.8-4.7c1.8-3.2,2.1-7.3,1-11.1
					c-1.2-3.9-3.8-7.2-7.2-8.8c-1.8-0.9-3.9-1.4-6-1.4c-3,0-6,0.9-8.5,2.6c0.2-5.9-1.5-10.9-5.1-14C695.2,645.2,692.1,644,688.8,644"/>
				<path class="st3" d="M316.2,124.1c-4,0-8.7-0.4-9.5-3.4c-0.8-2.8,0.5-5,1.5-6.5c0.9-1.4,1.2-2.1,0.8-2.7c-1-1.7-2.6-9.2-0.1-17.2
					c2.1-6.7,6.5-11.7,12.9-14.5c4-1.8,7.9-2.7,11.4-2.7c10,0,16.1,7.2,18,14.7c1.8-0.5,3.3-0.8,4.7-0.8c2.2,0,3.8,0.7,4.9,2.1
					c1.1,1.5,1.4,3.4,1.3,4.8c1.5-0.7,3.7-1.5,6.1-1.5c1.7,0,3.3,0.4,4.8,1.2c5.7,3.3,5.5,7.8,5.3,10.4c0,0.7-0.1,1.7,0.1,1.9
					c0,0,0.1,0.1,0.5,0.1c0.1,0,0.2,0,0.2,0c0.5,0,1-0.1,1.5-0.1c5.1,0,15.5,1.6,18,5.4c0.5,0.7,0.5,1.5,0.1,2.3
					c-2.1,3.9-17.4,5.6-23.4,5.7c-0.3,0-0.5,0-0.8,0c-3.2,0-7.3-0.3-11.6-0.5c-5.2-0.3-11.1-0.7-16.8-0.7c-2.8,0-5.3,0.1-7.6,0.3
					c-2.5,0.2-5.2,0.4-7.8,0.7C325.3,123.7,320.3,124.1,316.2,124.1L316.2,124.1z"/>
				<path d="M333.3,78.2c10.1,0,15.8,7.6,17.3,15c2.2-0.8,4-1.1,5.4-1.1c6.8,0,5,7.6,5,7.6s3.4-2.2,7.3-2.2c1.4,0,2.9,0.3,4.3,1.1
					c8.7,5.1,2.1,12.5,6.4,12.5c0.1,0,0.2,0,0.3,0c0.4,0,0.9,0,1.4,0c5.4,0,15,1.7,17.1,5c2.3,3.6-13.7,6.3-22.5,6.5c-0.2,0-0.5,0-0.8,0
					c-7.1,0-18-1.2-28.5-1.2c-2.6,0-5.2,0.1-7.7,0.3c-7.6,0.6-16,1.7-22.2,1.7c-4.7,0-8-0.6-8.6-2.6c-1.3-4.5,3.9-6.8,2.3-9.5
					c-1.6-2.6-4.6-22.7,12.4-30.2C326.4,79,330,78.2,333.3,78.2 M333.3,76.2c-3.7,0-7.7,0.9-11.8,2.8c-6.7,2.9-11.3,8.2-13.5,15.1
					c-2.4,7.7-1.1,15.8,0.2,18c0,0,0,0,0,0c0,0.3-0.5,1.1-0.9,1.6c-1,1.6-2.6,4.1-1.7,7.3c1,3.6,6.2,4.1,10.5,4.1c4.2,0,9.2-0.5,14.5-1
					c2.6-0.2,5.3-0.5,7.8-0.7c2.3-0.2,4.8-0.3,7.6-0.3c5.7,0,11.6,0.4,16.8,0.7c4.3,0.3,8.4,0.5,11.7,0.5c0.3,0,0.5,0,0.8,0
					c3.5,0,21.6-1.3,24.3-6.2c0.6-1.1,0.5-2.3-0.1-3.3c-1.2-1.9-4.1-3.5-8.5-4.6c-3.3-0.8-7.2-1.3-10.3-1.3c-0.5,0-0.9,0-1.4,0
					c0-0.3,0-0.6,0-0.9c0.2-2.7,0.5-7.7-5.8-11.3c-1.6-0.9-3.3-1.4-5.3-1.4c-1.9,0-3.7,0.5-5.1,1c-0.1-1.3-0.5-2.7-1.5-3.9
					c-0.9-1.1-2.6-2.4-5.7-2.4c-1.2,0-2.5,0.2-4,0.6C349.7,83.1,343.3,76.2,333.3,76.2"/>
				<rect x="-1313" y="7.9" class="st25" width="1009.1" height="800.1"/>
				<rect x="-1325" y="42" class="st25" width="1009.1" height="800.1"/>
				</svg>
				</div>
			</div>
		</div>
	</div>
	<a href="store.html" id="map2"><img src="<?php echo Yii::app()->baseUrl?>/images/map-hover.png" class="img-responsive"></a>
	<div class="cta text-center hidden-lg hidden-md hidden-sm">
		<img src="<?php echo Yii::app()->baseUrl?>/images/cta-m.png"/>
		<img src="<?php echo Yii::app()->baseUrl?>/images/tree-m.png" class="tree-m"/>
	</div>
	<div class="map-m hidden-lg hidden-md">
		<div class="map-intro">
			Dò tìm<br/>
			khám phá
			<p>Khám phá <span class="dd">315</span> địa điểm zero-waste thú vị ở TP. HCM!</p>
		</div>
		<div id="map-m">
			<div class="bxslider">
				<div class="map-item">
					<img src="<?php echo Yii::app()->baseUrl?>/images/quan1.png" class="img-responsive" />
					<div class="map-title">
						<h3>Quận nhứt</h3>
						<p>38 cửa hàng</p>
					</div>
				</div>
				<div class="map-item">
					<img src="<?php echo Yii::app()->baseUrl?>/images/quan1.png" class="img-responsive" />
					<div class="map-title">
						<h3>Quận nhứt</h3>
						<p>38 cửa hàng</p>
					</div>
				</div>
				<div class="map-item">
					<img src="<?php echo Yii::app()->baseUrl?>/images/quan1.png" class="img-responsive" />
					<div class="map-title">
						<h3>Quận nhứt</h3>
						<p>38 cửa hàng</p>
					</div>
				</div>
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
    $('.bxslider').bxSlider({
			controls: false,
			minSlides:3,
			maxSlides:3,
		});
  });
", CClientScript::POS_END);?>
