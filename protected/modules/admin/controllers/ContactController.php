<?php

class ContactController extends AdminController{

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
        $model = new Contact('search');
        $model->unsetAttributes();
        if(isset($_GET['Contact'])){
            $model->attributes = $_GET['Contact'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact(array('model')));
    }

    public function actionDelete($id){
        $model= $this->loadModel($id);
        if($model->delete()){
            echo json_encode(1);
        }
    }

	public function actionView($id){
		$model = $this->loadModel($id);
		$this->render('view', compact(array('model')));
	}
    public function loadModel($id){
        $model = Contact::model()->findByPk($id);

        return $model;
    }
}
