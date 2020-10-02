<?php
class NewsController extends AdminController{
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
        $model = new News('search');
        $model->unsetAttributes();

        if(isset($_GET['News'])){
            $model->attributes = $_GET['News'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

    public function actionCreate(){
        $model = new News;
        if(isset($_POST['News'])){
            $model->attributes = $_POST['News'];
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

            //ExtraHelper::update_tracking_data($model, 'create');
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/news/admin'));
            }
        }
        $this->render('create', compact(array('model')));
    }

    public function actionUpdate($id){
        $model = $this->loadModel($id);
        $old_photo = $model['photo'];
	   $old_photo2 = $model['large_photo'];
        if(isset($_POST['News'])){
            $model->attributes = $_POST['News'];
            $file = CUploadedFile::getInstance($model, 'photo');
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

		  $file2 = CUploadedFile::getInstance($model, 'large_photo');
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

            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/news/admin'));
            }
        }
        $this->render('update', compact(array('model')));
    }

    public function actionDelete($id){
        $model = $this->loadModel($id);
	   $old_photo = $model['photo'];
        if($model->delete()){
		   if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/$old_photo")){
			  unlink(Yii::app()->basePath . "/../uploads/$old_photo");
		   }
            echo json_encode(1);
        }
    }

    public function loadModel($id){
        $model = News::model()->findByPk($id);

        return $model;
    }
}
