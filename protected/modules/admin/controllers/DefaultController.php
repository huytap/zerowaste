<?php

class DefaultController extends AdminController
{
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
                'actions'=>array('admin','changepassword'),
                'users'=>array('@'),
            ),
            array('deny',  // deny all users
                'users'=>array('*'),
            ),
        );
    }

	public function actionAdmin(){

		$this->render('admin');
	}

	public function actionChangepassword(){
		$model = Users::model()->findByPk(Yii::app()->user->id);
		$model->scenario = 'change';
		if(isset($_POST['Users'])){
			$model->attributes=$_POST['Users'];
			$model->password = sha1(md5($model['new_password']));
			if($model->validate() && $model->update()){
				Yii::app()->user->setFlash('change_password', 'Update password success.');
                $this->refresh();
			}
		}
		$this->render('change_password', compact('model'));
	}
}
