<?php
class StorecategoryController extends AdminController{
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
        $model = new StoreCategory('search');
        $model->unsetAttributes();

        if(isset($_GET['StoreCategory'])){
            $model->attributes = $_GET['StoreCategory'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

    public function actionCreate(){
        $model = new StoreCategory;
        if(isset($_POST['StoreCategory'])){
            $model->attributes = $_POST['StoreCategory'];
		  $file = CUploadedFile::getInstance($model, 'icon');
            if ($file !== null) {
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                $model['icon'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
            }

            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/storecategory/admin'));
            }
        }

        $this->render('create', compact(array('model')));
    }

    public function actionUpdate($id){
        $model = $this->loadModel($id);
	   $old_photo = $model['icon'];
        if(isset($_POST['StoreCategory'])){
            $model->attributes = $_POST['StoreCategory'];
		  $file = CUploadedFile::getInstance($model, 'icon');
            if ($file !== null) {
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                $model['icon'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
            }

            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/storecategory/admin'));
            }
        }
        $this->render('update', compact(array('model')));
    }

    public function actionDelete($id){
        $model = $this->loadModel($id);
        if($model->delete()){
            echo json_encode(1);
        }
    }

    public function loadModel($id){
        $model = StoreCategory::model()->findByPk($id);

        return $model;
    }
}
