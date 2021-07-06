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
		//if(isset($_REQUEST['tag']) && isset($_POST['page'])){
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
		}elseif(isset($_GET['tag'])){
			$model = Store::model()->getListSearch('', $_GET['tag'], '');
		}elseif(isset($_GET['related'])){
			$model = Store::model()->getListSearch($_GET['related'], '', '');
		}else{
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
		if(!Yii::app()->user->id)
			Yii::app()->SESSION['link_product_detail'] = Yii::app()->baseUrl.'/products/'.$pslug.'.html';
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
		$this->layout =false;
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
			if($model->login()){
				/*if(Yii::app()->SESSION['link_product_detail']){
					$this->redirect(Yii::app()->SESSION['link_product_detail']);
				}*/
				echo json_encode(1);
			}else{
				echo json_encode(0);
			}
		}
		//$this->render('login',array('model'=>$model));
	}

	public function actionRegister(){
		if(Yii::app()->user->id>0){
			$this->redirect(Yii::app()->baseUrl.'/');
		}
		$this->layout = false;
		$model= new Users('register');
		if(isset($_REQUEST['Users'])){
			$checkemail = Users::model()->checkEmail($_REQUEST['Users']['email']);
			if(!$checkemail){
				$avatarlist = Category::model()->getListAvatar();
				$random_keys=array_rand($avatarlist,1);
				$model->attributes=$_POST['Users'];
				$model->username = explode("@", $model->email)[0];
				$model->is_admin=0;
				$model->avatar = $avatarlist[$random_keys];
				$model->updated_by = 9999;
				//ExtraHelper::update_tracking_data($model, 'create');
				$model->added_date = date('Y-m-d H:i:s');
				$model->updated_date = date('Y-m-d H:i:s');
				if(!empty($model->password)){
					$model->password = sha1(md5($model->password));
				}
				$model->roles="user";
				$model->validate();
				if($model->save()){
					echo json_encode(1);
				}else{
					echo json_encode(0);
				}
			}else{
				echo json_encode(-1);
			}
		}
	}

	public function actionForgotpassword(){
		$this->layout = false;
		if(isset($_REQUEST['Users']['email'])){
			$checkemail = Users::model()->checkEmail($_REQUEST['Users']['email']);
			if($checkemail){
				$random_keys = ExtraHelper::generateRandomString(32);
				$checkemail->password_reset_token = $random_keys;
				if($checkemail->update()){
					$template_file = Settings::model()->getSetting('email_forgotpassword');
					$subject = 'Quên mật khẩu';
	        $output = "";
	        $full_name = 'Zerowaste';
	        $data['fullname'] = $model['fullname'];
	        $data['link_active'] = Yii::app()->params['link'].'/site/resetpassword?string='.$checkemail->password_reset_token;
					$result = Yii::app()->mailer->send_email($subject, $template_file, $full_name, $data, array($checkemail['email'] => $checkemail['email']), array(), $output);
					if($result)
						echo json_encode(array(
							'status' => 1,
							'src' => Yii::app()->baseUrl.'/images/aw_crocs_forgot2.svg',
							'email' => $_REQUEST['Users']['email']
						));
			}else{
				echo json_encode(array('status' =>-1));
			}
		}else{
			echo json_encode(array('status' =>-1));
		}
		}
	}
		public function actionResetpassword(){
			if(isset($_GET['string'])){
				$criteria = new CDbCriteria;
				$criteria->compare('password_reset_token', $_GET['string'], false);
				$model = Users::model()->find($criteria);
				if($model){
					$model->scenario = 'forgotpassword';
					$flag = false;
					if(isset($_POST['Users'])){
						$model->attributes = $_POST['Users'];
						$model->password = sha1(md5($model['confirm_new_password']));
						$model->validate();
						if(!$model->hasErrors() && $model->update()){
							$model->password_reset_token = '';
							$model->update();
							$flag = true;
						}
					}
					$this->render('profile/resetpassword', compact(array('model', 'flag')));
				}else{
					$this->render('error');
				}

			}
		}

	public function actionLogout(){
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}

	public function actionMyaccount(){
		if(isset(Yii::app()->user->id)){
			$userid= Yii::app()->user->id;
			$user = Users::model()->findByPk($userid);
			$stores = UserStore::model()->getList($userid);
			$comments = Comment::model()->getListByMember($userid);
			$comment_likes = CommentLikes::model()->getListByMember($userid);
			$this->render('profile/myaccount', compact(array('user', 'stores', 'comments', 'comment_likes')));
		}
	}

	public function actionUpdate(){
		if(isset($_POST['Users']) && isset(Yii::app()->user->id)){
			$userid= Yii::app()->user->id;
			$user = Users::model()->findByPk($userid);
			$user->attributes = $_POST['Users'];
			if($user->new_password !== ''){
				$user->password = sha1(md5($user['new_password']));
			}
			$photo = CUploadedFile::getInstance($user, 'avatar');

			if($photo !== null){
					$ran = rand(0, 999999999);
					$cover_photo = $photo->name;
					$user['avatar'] = $cover_photo;
					$photo->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
			}

			if($user->update()){
				echo json_encode(1);
			}else{
				echo json_encode(0);
			}
		}
	}
}
