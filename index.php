<?php
ini_set('display_errors', true);
error_reporting(E_ALL);
date_default_timezone_set("Asia/Saigon");
error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED);
// change the following paths if necessary
$yii=dirname(__FILE__).'/../yii/yii.php';
if(strpos($_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'], 'admin')){
	$config=dirname(__FILE__).'/protected/config/main2.php';
}else{
	$config=dirname(__FILE__).'/protected/config/main.php';
}

// remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG',true);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL',3);

require_once($yii);
Yii::createWebApplication($config)->run();
