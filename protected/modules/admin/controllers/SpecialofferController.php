<?php 
class SpecialofferController extends AdminController{
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
        $model = new Special('search');
        $model->unsetAttributes();
        
        if(isset($_GET['Special'])){
            $model->attributes = $_GET['Special'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

    public function actionCreate(){
        $model = new Special;
        if(isset($_POST['Special'])){
            $model->attributes = $_POST['Special'];
            $model->hotel_id = Yii::app()->session['hotel'];
            $languages = Yii::app()->params['language_config'];
            $check_in = ExtraHelper::date_2_save($_POST['Special']['checkin']);
            $check_out = ExtraHelper::date_2_save($_POST['Special']['checkout']);
            $model['checkin']=$check_in['date'];
            $model['checkout'] = $check_out['date'];
            $title = $short_content= $full_content=array();
            foreach($languages as $key => $lang){
                if(!$_POST['Special']['title'][$key]){
                    $title[$key]=$_POST['Special']['title']['en'];
                }else{
                    $title[$key]=$_POST['Special']['title'][$key];
                }
                if(!$_POST['Special']['short_content'][$key]){
                    $short_content[$key]=$_POST['Special']['short_content']['en'];
                }else{
                    $short_content[$key]=$_POST['Special']['short_content'][$key];
                }
                if(!$_POST['Special']['full_content'][$key]){
                    $full_content[$key]=$_POST['Special']['full_content']['en'];
                }else{
                    $full_content[$key]=$_POST['Special']['full_content'][$key];
                }
            }
            //$model->slug=ExtraHelper::changeTitle($_POST['Special']['title']['en']);
            if(is_array($title)){
                $model->title=json_encode($title);
            }
            if(is_array($short_content)){
                $model->short_content=json_encode($short_content);
            }
            if(is_array($full_content)){
                $model->full_content=json_encode($full_content);
            }
            $file = CUploadedFile::getInstance($model, 'cover_photo');
            if ($file !== null) {
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                $model['cover_photo'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/cover/$cover_photo");
            }

            $file2 = CUploadedFile::getInstance($model, 'banner');
            if ($file2 !== null) {
                $ran = rand(0, 999999999);
                $banner = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file2->name)).".jpg";
                $model['banner'] = $banner;
                $file2->saveAs(Yii::app()->basePath . "/../uploads/cover/$banner");
            }

            ExtraHelper::update_tracking_data($model, 'create');
            $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/specialoffer/admin'));
            }
        }   
        if($model){
            $model->checkin = ExtraHelper::date_2_show($model['checkin']);
            $model->checkout = ExtraHelper::date_2_show($model['checkout']);
        }
        $this->render('create', compact(array('model')));
    }

    public function actionUpdate($id){
        $model = $this->loadModel($id);
        $old_photo = $model['cover_photo'];
        $old_banner = $model['banner'];
        if(isset($_POST['Special'])){
            $model->attributes = $_POST['Special'];
            $model->hotel_id = Yii::app()->session['hotel'];
            $languages = Yii::app()->params['language_config'];
            $title = $short_content= $full_content=array();
            $check_in = ExtraHelper::date_2_save($_POST['Special']['checkin']);
            $check_out = ExtraHelper::date_2_save($_POST['Special']['checkout']);
            $model['checkin']=$check_in['date'];
            $model['checkout'] = $check_out['date'];
            foreach($languages as $key => $lang){
                if(!$_POST['Special']['title'][$key]){
                    $title[$key]=$_POST['Special']['title']['en'];
                }else{
                    $title[$key]=$_POST['Special']['title'][$key];
                }
                if(!$_POST['Special']['short_content'][$key]){
                    $short_content[$key]=$_POST['Special']['short_content']['en'];
                }else{
                    $short_content[$key]=$_POST['Special']['short_content'][$key];
                }
                if(!$_POST['Special']['full_content'][$key]){
                    $full_content[$key]=$_POST['Special']['full_content']['en'];
                }else{
                    $full_content[$key]=$_POST['Special']['full_content'][$key];
                }
            }
            //$model->slug=ExtraHelper::changeTitle($_POST['Special']['title']['en']);
            if(is_array($title)){
                $model->title=json_encode($title);
            }
            if(is_array($short_content)){
                $model->short_content=json_encode($short_content);
            }
            if(is_array($full_content)){
                $model->full_content=json_encode($full_content);
            }
            $file = CUploadedFile::getInstance($model, 'cover_photo');
            if($file !== null){
                $ran = rand(0, 999999999);
                $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";   
                $model['cover_photo'] = $cover_photo;
                $file->saveAs(Yii::app()->basePath . "/../uploads/cover/$cover_photo");
                if($old_photo && file_exists(Yii::app()->basePath . "/../uploads/cover/$old_photo")){
                    unlink(Yii::app()->basePath . "/../uploads/cover/$old_photo");
                }
            }else{
                $model->cover_photo = $old_photo;
            }

            $file2 = CUploadedFile::getInstance($model, 'banner');
            if ($file2 !== null) {
                $ran = rand(0, 999999999);
                $banner = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file2->name)).".jpg";
                $model['banner'] = $banner;
                $file2->saveAs(Yii::app()->basePath . "/../uploads/cover/$banner");
                if($old_banner && file_exists(Yii::app()->basePath . "/../uploads/cover/$old_banner")){
                    unlink(Yii::app()->basePath . "/../uploads/cover/$old_banner");
                }
            }else{
                $model->banner = $old_banner;
            }

             $model->validate();
            if(!$model->hasErrors() && $model->save()){
                $this->redirect(Yii::app()->createAbsoluteUrl('admin/specialoffer/admin'));
            }
        }
        $model->title=json_decode($model->title,true);
        $model->short_content=json_decode($model->short_content,true);
        $model->full_content=json_decode($model->full_content,true);
        if($model){
            $model->checkin = ExtraHelper::date_2_show($model['checkin']);
            $model->checkout = ExtraHelper::date_2_show($model['checkout']);
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
        $model = Special::model()->findByPk($id);

        return $model;
    }
}