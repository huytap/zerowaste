<?php
class EventController extends Controller{
  public function actionIndex(){
    $model = News::model()->getList(1);
    $eco = News::model()->getList(2);
    $this->render('index', compact(array('model', 'eco')));
  }

  public function actionDetail($eventid){
	  $model = News::model()->findByPk($eventid);
       $this->render('detail', compact(array('model')));
  }
}
 ?>
