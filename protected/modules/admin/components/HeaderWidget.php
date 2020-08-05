<?php
class HeaderWidget extends CWidget{
	
    public function run() {
        $user = Users::model()->findByPk(Yii::app()->user->id);
        $this->render('header', compact(array('user')));
    }
}