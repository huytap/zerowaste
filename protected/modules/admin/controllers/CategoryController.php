<?php

class CategoryController extends AdminController
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

	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new SpecialCategories;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['SpecialCategories']))
		{
			$model->attributes=$_POST['SpecialCategories'];
			//$model->hotel_id = Yii::app()->session['hotel'];
			ExtraHelper::update_tracking_data($model, 'create');
			$languages = Yii::app()->params['language_config'];
            $title = array();
            if($_POST['SpecialCategories']['title']['en']==''){
				$model->setScenario('myScenario');
            }else{
	            foreach($languages as $key => $lang){
	                if(!$_POST['SpecialCategories']['title'][$key]){
	                    $title[$key]=$_POST['SpecialCategories']['title']['en'];
	                }else{
	                    $title[$key]=$_POST['SpecialCategories']['title'][$key];
	                }
	            }
	            $model->slug=ExtraHelper::changeTitle($_POST['SpecialCategories']['title']['en']);
	            if(is_array($title)){
	            	$model->title=json_encode($title);
	            }
	        }
			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/category/admin'));
            }
		}
		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		if(isset($_POST['SpecialCategories']))
		{
			$model->attributes=$_POST['SpecialCategories'];
			//$model->hotel_id = Yii::app()->session['hotel'];
			ExtraHelper::update_tracking_data($model, 'update');
			$languages = Yii::app()->params['language_config'];
			if($_POST['SpecialCategories']['title']['en']==''){
				$model->setScenario('myScenario');
			}
			else{
	            $title = array();
	         	foreach($languages as $key => $lang){
	                if(!$_POST['SpecialCategories']['title'][$key]){
						$title[$key]=$_POST['SpecialCategories']['title']['en'];
					}else{
	                    $title[$key]=$_POST['SpecialCategories']['title'][$key];
	                }
	            }
	            $model->slug=ExtraHelper::changeTitle($_POST['SpecialCategories']['title']['en']);
	            if(is_array($title)){
	            	$model->title=json_encode($title);
	            }
	        }
			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/category/admin'));
            }
		}
		$model->title = json_decode($model->title, true);
		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$model = $this->loadModel($id);
        if($model->delete()){
            echo json_encode(1);
        }
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('SpecialCategories');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	public function actionAdmin(){
        $model = new SpecialCategories('search');
        $model->unsetAttributes();
        
        if(isset($_GET['SpecialCategories'])){
            $model->attributes = $_GET['SpecialCategories'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return SpecialCategories the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=SpecialCategories::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param SpecialCategories $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='special-categories-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
