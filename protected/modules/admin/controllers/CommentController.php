<?php

class CommentController extends AdminController{

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
        $model = new Comment('search');
        $model->unsetAttributes();
        if(isset($_GET['Comment'])){
            $model->attributes = $_GET['Comment'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact(array('model')));
    }

	public function actionView($id){
		$model = $this->loadModel($id);
		$this->render('view', compact('model'));
	}

    public function actionDelete($id){
        $model= $this->loadModel($id);
        $gallery_cmt = CommentImage::model()->getListByCMT($id);
        if($model->delete()){
		   if($gallery_cmt && count($gallery_cmt)){
			   foreach($gallery_cmt->getData() as $gl){
				   if($gl->name && file_exists(Yii::app()->basePath . "/../uploads/comment/$gl->name")){
					  unlink(Yii::app()->basePath . "/../uploads/comment/$gl->name");
				   }
				   $gl->delete();
			   }
		   }

            echo json_encode(1);
        }
    }

    public function loadModel($id){
        $model = Comment::model()->findByPk($id);

        return $model;
    }
}
