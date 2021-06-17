<!DOCTYPE html>
<html>
<head>
	<?php
	function limitParagraphs($sHTML, $iLimit){
	    if(1 === preg_match('~(<p>.+?</p>){' . (int)$iLimit . '}~i', $sHTML, $aMatches)){
	        return $aMatches[0];
	    }
	    return strip_tags($sHTML);
	}
	$page = isset($_GET['page']) ? $_GET['page'] : '';
	if(isset($_GET['slug'])){
		if($page == 'store'){
			$store = Store::model()->findByPk($_GET['storeid']);
			$des = $store['description'];
			?>
			<title><?php echo $store['name'];?> - Zero Waste Wonderland</title>
			<meta property="og:image" itemprop="thumbnailUrl" content="<?php echo Yii::app()->params['link']?>/uploads/<?php if(isset($store['large_photo'])) echo $store['large_photo'];else echo $store['photo'];?>" />
			<meta name="description" content="<?php echo limitParagraphs($des, 128);?>">
			<?php
		}elseif($page == 'events'){
			$model = News::model()->findByPk($_GET['eventid']);
			$des = $model['short_description'];
			?>
			<title><?php echo $model['name'];?> - Zero Waste Wonderland</title>
			<meta property="og:image" itemprop="thumbnailUrl" content="<?php echo Yii::app()->params['link']?>/uploads/<?php echo $model['large_photo'];?>" />
			<meta name="description" content="<?php echo $des;?>">
			<?php
		}
	}else{
		$seo = Seo::model()->getByPage($page);
		if($seo){
			?>
			<title><?php echo $seo['meta_title'];?> - Zero Waste Wonderland</title>
			<meta property="og:image" itemprop="thumbnailUrl" content="<?php echo Yii::app()->params['link']?>/uploads/<?php echo $seo['thumnail_url'];?>" />
			<meta name="description" content="">
		<?php
		}else{
		?>
			<title>Zero Waste Wonderland</title>
			<meta property="og:image" itemprop="thumbnailUrl" content="<?php echo Yii::app()->params['link']?>/images/ZWW_FBCover.jpg" />
		<?php }
	}?>
	<meta name="keywords" content=""/>
	<meta name="news_keywords" content=""/>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<meta name="robots" content="index, follow">

		<link rel="apple-touch-icon" sizes="57x57" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo Yii::app()->baseUrl?>/images/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="<?php echo Yii::app()->baseUrl?>/images/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?php echo Yii::app()->baseUrl?>/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="<?php echo Yii::app()->baseUrl?>/images/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?php echo Yii::app()->baseUrl?>/images/favicon-16x16.png">
<link rel="manifest" href="<?php echo Yii::app()->baseUrl?>/images/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="<?php echo Yii::app()->baseUrl?>/images/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
	<?php Yii::app()->clientScript->registerCssFile(Yii::app()->baseUrl.'/css/swiper-bundle.min.css');?>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/css/style.css?v=<?php echo time(); ?>">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl?>/css/responsive.css?v=<?php echo time(); ?>">
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-T4N1XJGH2T"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-T4N1XJGH2T');
</script>
</head>
<body>
