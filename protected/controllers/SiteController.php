<?php

class SiteController extends Controller{
	public function actions(){
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	public function actionIndex(){
		$this->render('index');
	}

	public function actionStore($page){
		if(isset($_POST['page'])){
			$this->layout = false;
			$criteria = new CDbCriteria;
			$criteria->limit = 3;
			$criteria->offset = $_POST['page']*$criteria->limit - $criteria->limit;
	    //$total = Store::model()->count();
	    //$pages = new CPagination($total);
			//$pages->pageSize = 3;
			//$pages->offset = $_POST['page']*$pages->pageSize = 3;
	    //$pages->applyLimit($criteria);

	    $model = Store::model()->findAll($criteria);
			//echo json_encode($model);
			$this->render('loadstore', compact('model'));
			Yii::app()->end();
		}
		//echo "<pre>";print_r($model);die;
		$model = Store::model()->getList();
		$this->render('store', compact(array('model', 'pages')));
	}

	public function actionProduct($page){
		$model = Category::model()->getList();
		$this->render('product', compact(array('model')));
	}

	public function actionEvent($page){
		$this->render('pages/event');
	}

	public function actionAbout($page){
		$this->render('pages/about');
	}
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}
