<?php

class SeoController extends AdminController{

    public function filters()
    {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
            array('booster.filters.BoosterFilter - delete')
        );
    }

    public function accessRules()
    {
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
        $model = new Seo('search');
        $model->unsetAttributes();
        if(isset($_GET['Seo'])){
            $model->attributes = $_GET['Seo'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact(array('model', 'flag')));
    }

    public function actionCreate(){
        $model = new Seo;
        if(isset($_POST['Seo'])){
            $model->attributes = $_POST['Seo'];
            $photo = CUploadedFile::getInstance($model, 'thumnail_url');
            if($photo !== null){
                $ran = rand(0, 999999999);
                $cover_photo = trim(date('Y-m-d-H-i-s') . $ran) . '-' . StringHelper::makeLink($photo->name);
                $model['thumnail_url'] = $cover_photo;
                $photo->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
            }
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/seo/admin'));
            }
        }
        $this->render('create', compact('model'));
    }

    public function actionUpdate($id){
        $model = $this->loadModel($id);
        $old_photo = $model->thumnail_url;

        if(isset($_POST['Seo'])){
            $model->attributes = $_POST['Seo'];
            $photo = CUploadedFile::getInstance($model, 'thumnail_url');
            if($photo !== null){
                $ran = rand(0, 999999999);
                $cover_photo = trim(date('Y-m-d-H-i-s') . $ran) . '-' . StringHelper::makeLink($photo->name);
                $model['thumnail_url'] = $cover_photo;
                $photo->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
                if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/$old_photo")){
                    unlink(Yii::app()->basePath . "/../uploads/$old_photo");
                }
            }else{
                $model->thumnail_url = $old_photo;
            }
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/Seo/admin'));
            }
        }

        $this->render('update', compact('model'));
    }

    public function actionDelete($id){
        $model= $this->loadModel($id);
        $old_photo = $model->thumnail_url;
        if($model->delete()){
            if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/$old_photo")){
                unlink(Yii::app()->basePath . "/../uploads/$old_photo");
            }
            echo json_encode(1);
        }
    }

    public function loadModel($id){
        $model = Seo::model()->findByPk($id);

        return $model;
    }
}
