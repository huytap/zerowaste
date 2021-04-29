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
	public function actionCreate(){
		$model=new Category;
		if(isset($_POST['Category'])){
			$model->attributes=$_POST['Category'];
			$model->slug = StringHelper::makeLink($model['name']);
			if($model['store_id'] !== ''){
			    $model->store_id = implode(',', $model['store_id']);
			}
			$file = CUploadedFile::getInstance($model, 'photo');
               if ($file !== null) {
                   $ran = rand(0, 999999999);
                   $cover_photo = date("Y-m-d-H-i-s") . '-'.ExtraHelper::changeTitle(str_replace(array('.gif','.jpg','.png'),'',$file->name)).".jpg";
                   $model['photo'] = $cover_photo;
                   $file->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo");
               }


			$file2 = CUploadedFile::getInstance($model, 'avatar');
               if ($file2 !== null) {
                   $ran = rand(0, 999999999);
                   $cover_photo2 = date("Y-m-d-H-i-s") . '-'.$file2->name;
                   $model['avatar'] = $cover_photo2;
                   $file2->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo2");
               }

			if(isset($_POST['CustomField'])){
				$model['field_custom_1'] = json_encode($_POST['CustomField']);
			}

			if(isset($_POST['CustomField2'])){
				$model['field_custom_2'] = json_encode($_POST['CustomField2']);
			}

			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/category/admin'));
               }
		}
		if($model){
		    $model->store_id = explode(',',$model->store_id);
		}

		if($model['field_custom_1']){
			$model['field_custom_1'] = json_decode($model['field_custom_1'], true);
		}

		if($model['field_custom_2']){
			$model['field_custom_2'] = json_decode($model['field_custom_2'], true);
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionUpdate($id){
		$model=$this->loadModel($id);
		$old_photo = $model['photo'];
		$old_photo2 = $model['avatar'];
		if(isset($_POST['Category'])){
			$model->attributes=$_POST['Category'];
			$model->slug = StringHelper::makeLink($model['name']);
			if($model['store_id'] !== ''){
			    $model->store_id = implode(',', $model['store_id']);
			}
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

			$file2 = CUploadedFile::getInstance($model, 'avatar');
               if ($file2 !== null) {
                   $ran = rand(0, 999999999);
                   $cover_photo2 = date("Y-m-d-H-i-s") . '-'.$file2->name;
                   $model['avatar'] = $cover_photo2;
                   $file2->saveAs(Yii::app()->basePath . "/../uploads/$cover_photo2");
			    if($old_photo2 && file_exists(Yii::app()->basePath . "/../uploads/$old_photo2")){
                       unlink(Yii::app()->basePath . "/../uploads/$old_photo2");
                   }
               }else{
                   $model->avatar = $old_photo2;
               }
			if(isset($_POST['CustomField'])){
				$model['field_custom_1'] = json_encode($_POST['CustomField']);
			}

			if(isset($_POST['CustomField2'])){
				$model['field_custom_2'] = json_encode($_POST['CustomField2']);
			}

			if($model->save()){
                $this->redirect(Yii::app()->createUrl('admin/category/admin'));
               }
		}
		if($model){
		    $model->store_id = explode(',',$model->store_id);
		}
		if($model['field_custom_1']){
			$model['field_custom_1'] = json_decode($model['field_custom_1'], true);
		}

		if($model['field_custom_2']){
			$model['field_custom_2'] = json_decode($model['field_custom_2'], true);
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
        $model = new Category('search');
        $model->unsetAttributes();

        if(isset($_GET['Category'])){
            $model->attributes = $_GET['Category'];
        }

        if (Yii::app()->getRequest()->getIsAjaxRequest()) {
            header( 'Content-type: application/json' );
            $this->renderPartial('_grid', compact(array('model')));
            Yii::app()->end();
        }

        $this->render('admin', compact('model'));
    }

	public function loadModel($id){
		$model=Category::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
}
