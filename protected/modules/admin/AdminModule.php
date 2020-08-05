<?php

class AdminModule extends CWebModule
{
	public function init()
	{
		// this method is called when the module is being created
		// you may place code here to customize the module or the application

		// import the module-level models and components
		$this->setImport(array(
			'admin.models.*',
			'admin.components.*',
		));
	}

	public function beforeControllerAction($controller, $action){
		if(parent::beforeControllerAction($controller, $action)){
			Yii::app()->setComponents(array(
                'user'=>array(
                    'class'=>'CWebUser',
                    'stateKeyPrefix'=>'My',
                    'loginUrl'=>Yii::app()->createUrl($this->getId().'/site/login'),
                ),
            ), false);
			return true;
		}
		else
			return false;
	}
}
