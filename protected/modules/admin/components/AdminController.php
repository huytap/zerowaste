<?php

class AdminController extends Controller{
	public $layoutPath;
	public $layout='/layouts/main';

	public $menu = array();

   
    public $breadcrumbs = array();

    public function init() {
    	parent::init();
        if(isset($_POST['_hotel'])){
            Yii::app()->session['hotel']=$_POST['_hotel'];
        }
        
    	$this->layoutPath = Yii::getPathOfAlias('application.modules.admin.views.layouts.main');
    	$this->layout = 'application.modules.admin.views.layouts.main';
    }

    //Insert Multiple
    public function multiexplode ($delimiters,$string) {

        $ready = str_replace($delimiters, $delimiters[0], $string);
        $launch = explode($delimiters[0], $ready);
        return  $launch;
    }
}