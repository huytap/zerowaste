<?php

class ProductgalleryController extends AdminController{

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
        $model=new Gallery('search');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['Gallery'])){
            $model->attributes=$_GET['Gallery'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid_2', compact(array('model')));
            Yii::app()->end();
        }
        $this->render('index',array(
            'model'=>$model,
        ));
    }

    public function actionCreate(){
        $model = new Gallery();
        if (isset($_POST['Gallery'])) {
            $model->attributes = $_POST['Gallery'];
            $model->type = 2;
            ExtraHelper::update_tracking_data($model, 'create');
            $model->save();
		  if(!is_dir(Yii::app()->basePath . '/../uploads/gallery')){
			mkdir(Yii::app()->basePath . '/../uploads/gallery');
		 }
            $gallery_id = $model->id;
            $image = CUploadedFile::getInstancesByName('items');
            if (isset($image) && count($image) >=1) {
                $i = 0;
                foreach ($image as $key => $value) {
                    $i++;
                    $gallery_item = new Item();
                    $gallery_item->display_order = $i;
                    $gallery_item->gallery_id = $gallery_id;
                    $gallery_item->file_ext = $value->type;
                    $gallery_item->old_name = $value->name;
                    $gallery_item->name = date("Y-m-d-H-i-s") . '-' . str_replace(' ', '-',$value->name);
                    $gallery_item->url = Yii::app()->basePath . "/../uploads/gallery/";
                    if ($i == 1) {
                        $gallery_item['thumb_nails'] = 1;
                        $gallery_item['cover_image'] = 1;
                    } else {
                        $gallery_item['thumb_nails'] = 0;
                        $gallery_item['cover_image'] = 0;
                    }
                    $gallery_item->save();
                    $value->saveAs(Yii::app()->basePath . "/../uploads/gallery/$gallery_item->name");
                }
            }
            $this->redirect(Yii::app()->createAbsoluteUrl('admin/productgallery/admin'));
        }
        $this->render('create', array('model' => $model));

    }

    public function actionUpdate($id){
        $model = Gallery::model()->findByPk($id);
      if(isset($_POST['Gallery'])){
          $model->attributes = $_POST['Gallery'];
          if($model->update()){
              $this->redirect(Yii::app()->createUrl('admin/productgallery/admin'));
          }
      }
      $this->render('update', compact('model'));
    }

    public function actionUpload($id){

        $gallery = Gallery::model()->with('items')->findByPk($id);

        if (isset($_POST['Gallery'])) {

            $image = CUploadedFile::getInstancesByName('items');

            $last = Item::model()->getLastItem($id);

            if (isset($image)) {

                $i = 0;

                foreach ($image as $key => $value) {

                    $i++;

                    $gallery_item = new Item();

                    $gallery_item->gallery_id = $id;

                    $gallery_item->file_ext = $value->type;

                    $gallery_item->old_name = $value->name;

                    $gallery_item->display_order = ++$last;

                    $gallery_item->name = date("Y-m-d-H-m-i") . '-' . str_replace(' ', '-',$value->name);

                    $gallery_item->url = Yii::app()->basePath . "/../uploads/gallery/";

                    $gallery_item->save();

                    $value->saveAs(Yii::app()->basePath . "/../uploads/gallery/$gallery_item->name");

                }

            }

            $this->redirect(Yii::app()->createAbsoluteUrl('admin/productgallery/admin'));

        }

        $this->render('upload', array('model' => $gallery));

    }



    public function loadItemModel($id){

        $item=Item::model()->findByPk($id);

        return $item;

    }

    public function actionDeleteItem(){

        if(isset($_POST['id'])){

            $item = $this->loadItemModel($_POST['id']);

            $file_image = Yii::app()->basePath . "/../uploads/gallery/" . $item->name;

            if ($item->delete()){

                if (file_exists($file_image)) {

                    unlink($file_image);

                }

                echo json_encode(1);

            }

        }

    }

    public function actionView($id){
        $gallery=Gallery::model()->findByPk($id);
        $this->render('view', compact(array('gallery')));
    }

    public function actionDelete($id){
        $items = Item::model()->getListByGallery($id);
        if ($items) {
            foreach ($items as $key => $value) {
                $file_image = Yii::app()->basePath . "/../uploads/gallery/" . $value->name;
                if (file_exists($file_image)) {
                    unlink($file_image);
                }
                $value->delete();
            }
        }

        $gallery = Gallery::model()->findByPk($id);
        if ($gallery->delete()){
            echo json_encode(1);
        }
    }

}



?>
