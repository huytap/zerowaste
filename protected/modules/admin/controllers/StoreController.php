<?php
class StoreController extends AdminController{
    public function filters(){
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
            array('booster.filters.BoosterFilter - delete')
        );
    }

    public function accessRules(){
        return array(
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions'=>RoleHelper::GetRole(),//array('create','update','admin'),
                'users'=>array('@'),
            ),
            array('deny',  // deny all users
                'users'=>array('*'),
            ),
        );
    }

    public function actionAdmin(){
        $model = new Store('search');
        $model->unsetAttributes();

        if(isset($_GET['Store'])){
            $model->attributes = $_GET['Store'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

    public function actionCreate(){
        $model = new Store;
        if(isset($_POST['Store'])){
            $model->attributes = $_POST['Store'];

		  $logo = CUploadedFile::getInstance($model, 'logo');
            if ($logo !== null) {
                $ran = rand(0, 999999999);
                $cover_logo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$logo->name)).".jpg";
                $model['logo'] = $cover_logo;
                $logo->saveAs(Yii::app()->basePath . "/../uploads/$cover_logo");
            }

            $file = CUploadedFile::getInstance($model, 'photo');
            if ($file !== null) {
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                $model['photo'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
            }

		  $file2 = CUploadedFile::getInstance($model, 'large_photo');
            if ($file2 !== null) {
                $ran = rand(0, 999999999);
                $cover_photo2 = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file2->name)).".jpg";
                $model['large_photo'] = $cover_photo2;
                $file2->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo2");
            }
		  if($model['store_category_id'] !== ''){
			 $model->store_category_id = implode(',', $model['store_category_id']);
		  }
            //ExtraHelper::update_tracking_data($model, 'create');
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/store/admin'));
            }
        }
	   if($model){
		  $model->store_category_id = explode(',',$model->store_category_id);
	   }
        $this->render('create', compact(array('model')));
    }

    public function actionUpdate($id){
        $model = $this->loadModel($id);
        $old_photo = $model['photo'];
	   $old_photo2 = $model['large_photo'];
	   $old_logo = $model['logo'];
        if(isset($_POST['Store'])){
            $model->attributes = $_POST['Store'];
		  $logo = CUploadedFile::getInstance($model, 'logo');
            if ($logo !== null) {
                $ran = rand(0, 999999999);
                $cover_logo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$logo->name)).".jpg";
                $model['logo'] = $cover_logo;
                $logo->saveAs(Yii::app()->basePath . "/../uploads/$cover_logo");
			 if($old_logo && file_exists(Yii::app()->basePath . "/../uploads/$old_logo")){
                    unlink(Yii::app()->basePath . "/../uploads/$old_logo");
                }
		 }else{
			 $model['logo'] = $old_logo;
		 }

            $file = CUploadedFile::getInstance($model, 'photo');
		  $file2 = CUploadedFile::getInstance($model, 'large_photo');
            if($file !== null){
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                $model['photo'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
                if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/$old_photo")){
                    unlink(Yii::app()->basePath . "/../uploads/$old_photo");
                }
            }else{
                $model->photo = $old_photo;
            }

		  if($file2 !== null){
                $ran = rand(0, 999999999);
                $cover_photo2 = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file2->name)).".jpg";
                $model['large_photo'] = $cover_photo2;
                $file2->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo2");
                if($old_photo2 && file_exists(Yii::app()->basePath . "/../uploads/$old_photo2")){
                    unlink(Yii::app()->basePath . "/../uploads/$old_photo2");
                }
            }else{
                $model->large_photo = $old_photo2;
            }
		  if($model['store_category_id'] !== ''){
			 $model->store_category_id = implode(',', $model['store_category_id']);
		  }
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/store/admin'));
            }
        }
	   if($model){
		  $model->store_category_id = explode(',',$model->store_category_id);
	   }
        $this->render('update', compact(array('model')));
    }

    public function actionDelete($id){
        $model = $this->loadModel($id);
	   $old_photo = $model['photo'];
	   $old_photo2 = $model['large_photo'];
	   $old_logo = $model['logo'];
        if($model->delete()){
		   if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/$old_photo")){
			 unlink(Yii::app()->basePath . "/../uploads/$old_photo");
	  	   }
		   if($old_photo2 && file_exists(Yii::app()->basePath . "/../uploads/$old_photo2")){
			  unlink(Yii::app()->basePath . "/../uploads/$old_photo2");
		   }
		   if($old_logo && file_exists(Yii::app()->basePath . "/../uploads/$old_logo")){
			  unlink(Yii::app()->basePath . "/../uploads/$old_logo");
		   }
            echo json_encode(1);
        }
    }

    public function loadModel($id){
        $model = Store::model()->findByPk($id);

        return $model;
    }
}
