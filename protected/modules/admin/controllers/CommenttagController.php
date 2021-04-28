<?php

class CommenttagController extends AdminController
{
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

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate(){
		$model=new CommentList;
		if(isset($_POST['CommentList'])){
			$model->attributes=$_POST['CommentList'];
			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/commenttag/admin'));
               }
		}
		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionUpdate($id){
		$model=$this->loadModel($id);
		if(isset($_POST['CommentList'])){
			$model->attributes=$_POST['CommentList'];

			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/commenttag/admin'));
               }
		}
		$this->render('update',array(
			'model'=>$model,
		));
	}

	public function actionDelete($id)
	{
		$model = $this->loadModel($id);
        if($model->delete()){
            echo json_encode(1);
        }
	}

	public function actionAdmin(){
        $model = new CommentList('search');
        $model->unsetAttributes();

        if(isset($_GET['CommentList'])){
            $model->attributes = $_GET['CommentList'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

	public function loadModel($id){
		$model=CommentList::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
}
