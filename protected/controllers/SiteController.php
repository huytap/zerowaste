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
		if(isset($_GET['tag'])){
			$model = Store::model()->getListSearch('', $_GET['tag'], '');
		}elseif(isset($_GET['related'])){
			$model = Store::model()->getListSearch($_GET['related'], '', '');
		}else{
			if(isset($_POST['page'])){
				$this->layout = false;
				$criteria = new CDbCriteria;
				//$criteria->compare('')
				$criteria->limit = 12;
				if(isset($_GET['filter'])){
					$criteria->addInCondition('id', explode(',',$_GET['filter']), 'OR');
				}
				$criteria->offset = $_POST['page']*$criteria->limit - $criteria->limit;
				if(isset($_POST['cate']) && $_POST['cate'] !== "0"){
					$criteria->addInCondition('id', explode(',',$_POST['cate']), 'OR');
				}
			  $model = Store::model()->findAll($criteria);
				$this->render('loadstore', compact('model'));
				Yii::app()->end();
			}
			$model = Store::model()->getList();
		}
		$this->render('store', compact(array('model', 'pages')));
	}

	public function actionStoredetail($storeid){
		$store = Store::model()->findByPk($storeid);
    	 	$district = StoreBrand::model()->getDistrict($storeid);
          $bg = '';
    	 	$store_near = Store::model()->getListNear($storeid, $district);
    	 	$store_related = Store::model()->getListRelated($storeid, $store);
    	 	$gallery = Gallery::model()->getListByStore($storeid);
          $this->render('storedetail', compact(array('store', 'bg', 'store_near', 'district', 'store_related', 'gallery')));
	}

	public function actionProduct($page){
		$model = Category::model()->getList();
		$this->render('product', compact(array('model')));
	}

	public function actionProductdetail($pslug){
		$model = Category::model()->getDetail($pslug);
		$gallery = Gallery::model()->getListByProduct($model['id']);
		$comments = Comment::model()->getListByProduct($model['id']);
		if(Yii::app()->request->isAjaxRequest && isset($_GET['ajax'])){
			$this->renderPartial('_item_comment', compact('comments'));
			Yii::app()->end();
		}
		$this->render('productdetail', compact(array('model', 'gallery', 'comments')));
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
	public function actionContact(){
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

	public function actionLogin(){
		if(Yii::app()->user->id>0){
			$this->redirect(Yii::app()->baseUrl.'/');
		}
		$model=new LoginForm;

		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form'){
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		if(isset($_POST['LoginForm'])){
			$model->attributes=$_POST['LoginForm'];
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		$this->render('login',array('model'=>$model));
	}

	public function actionRegister(){
		if(Yii::app()->user->id>0){
			$this->redirect(Yii::app()->baseUrl.'/');
		}
		$model= new Users('register');
		if(isset($_REQUEST['Users'])){
			$model->attributes=$_POST['Users'];
			$model->is_admin=0;
			ExtraHelper::update_tracking_data($model, 'create');
			if(!empty($model->password)){
				$model->password = sha1(md5($model->password));
			}
			$model->roles="user";
			$model->validate();
			if($model->save()){
				$this->redirect(Yii::app()->createUrl('site/login'));
			}
		}
		$this->render('register',compact('model'));
	}

	public function actionLogout(){
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}
