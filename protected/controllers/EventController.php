<?php
class EventController extends Controller{
  public function actionIndex(){
    if(isset($_GET['tag'])){
      if($_GET['tag'] == 'events'){
        $model = News::model()->getList(1);
        $this->render('events', compact(array('model')));
      }elseif($_GET['tag'] == 'news'){
        $model = News::model()->getList(2);
        $this->render('news', compact(array('model')));
      }
    }else{
      $model = News::model()->getList(1,6);
      $eco = News::model()->getList(2,8);
      $this->render('index', compact(array('model', 'eco')));
    }
  }

  public function actionDetail($eventid){
	  $model = News::model()->findByPk($eventid);
	  $related = News::model()->getNewsRelated($model['news_category_id'], $model['id']);
       $this->render('detail', compact(array('model', 'related')));
  }
}
 ?>
