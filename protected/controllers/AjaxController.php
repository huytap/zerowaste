<?php
class AjaxController extends Controller{
  public $layout = false;
  public function actionLoadMoreStore(){
    if(isset($_POST['page'])){
      $store = Store::model()->findByPk($_POST['id']);
      $this->render('store', compact(array('store')));
    }
  }
  public function actionStore(){
    if(isset($_POST['id'])){
      $store = Store::model()->findByPk($_POST['id']);
	 $district = StoreBrand::model()->getDistrict($_POST['id']);
      $bg = $_POST['bg'];
	 $store_near = Store::model()->getListNear($_POST['id'], $district);
	 $store_related = Store::model()->getListRelated($_POST['id'], $store);
	 $gallery = Gallery::model()->getListByStore($_POST['store_id']);
      $this->render('store', compact(array('store', 'bg', 'store_near', 'district', 'store_related')));
    }
  }

  public function actionSearchstore(){
    if(isset($_POST['text_search'])){
      $model = Store::model()->getListSearch('', '', $_POST['text_search']);
      if($model && count($model->getData())){
        $this->render("searchstore", compact(array('model')));
      }else{

      }
    }elseif(isset($_POST['cate']) || isset($_POST['where'])){
      $model = Store::model()->getListSearch($_POST['cate'], $_POST['where'], '');
      if($model && count($model->getData())){
        $this->render("searchstore", compact(array('model')));
      }else{

      }
    }
  }

  public function actionSearchproduct(){
    if(isset($_POST['text_search'])){
      $model = Category::model()->getListSearch('', $_POST['text_search']);
      if($model && count($model->getData())){
        $this->render("searchproduct", compact(array('model')));
      }else{

      }
    }elseif(isset($_POST['cate'])){
      $model = Category::model()->getListSearch($_POST['cate'], '');
      if($model && count($model->getData())){
        $this->render("searchproduct", compact(array('model')));
      }else{

      }
    }
  }

  public function actionProduct(){
    if(isset($_POST['id'])){
      $model = Category::model()->findByPk($_POST['id']);
      $this->render('product', compact(array('model')));
    }
  }

  public function actionNews(){
    if(isset($_POST['id'])){
      $model = News::model()->findByPk($_POST['id']);
	 $related = News::model()->getNewsRelated($model['news_category_id'], $model['id']);
      $this->render('news', compact(array('model', 'related')));
    }
  }

  public function actionContact(){
    if(isset($_POST['name'])){
      $criteria = new Contact;
      $criteria->name = $_POST['name'];
      $criteria->email = $_POST['email'];
      $criteria->who = $_POST['who'];
      $criteria->invite = $_POST['introcate'];
      $criteria->category = $_POST['cate'];
      $criteria->shop_name = $_POST['shop'];
      $criteria->facebook = $_POST['facebook'];
      $criteria->instagram = $_POST['instagram'];
      $criteria->website = $_POST['website'];
      $criteria->address = $_POST['address'];
      $criteria->shop_intro = $_POST['intro'];
      $criteria->added_date = date('Y-m-d H:m:s');
      if($criteria->save()){
        echo json_encode(0);
      }else{
        echo json_encode(1);
      }

    }
  }
}
