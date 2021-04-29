<?php
class AjaxController extends Controller{
  public $layout = false;

	public function actionLikecmt(){
		if(isset($_POST['lk'])){
			$data = Comment::model()->findByPk($_POST['lk']);
			if($data){
				$user_id = Yii::app()->user->id?Yii::app()->user->id:1;
				$checkLike = CommentLikes::model()->checkLikeByCMT($_POST['lk'], $user_id);
				if(!$checkLike){
					$model = new CommentLikes;
					$model->user_id= $user_id;
					$model->likes = 1;
					$model->comment_id = $_POST['lk'];
					if($model->save()){
						echo json_encode(1); //like
					}else{
						echo json_encode(-1);//error
					}
				}else{
					$checkLike->likes = !$checkLike->likes;
					if($checkLike->update()){
						echo json_encode(2);//like or unlike
					}
				}
			}else{
				echo json_encode(0);// error not data
			}
		}else {
			echo json_encode(-2);//error empty comment id
		}
	}
	public function actionComment(){
		if($_POST['Comment']){
			$flag = 0;
			$model = new Comment;
			$model->attributes = $_POST['Comment'];
			$model->date = date('Y-m-d H:m:i');
			//$model->user_id = Yii::app()->user->id;
			$model->user_id = Yii::app()->user->id;
			if(!is_dir(Yii::app()->basePath . '/../uploads/comment')){
	   			mkdir(Yii::app()->basePath . '/../uploads/comment');
	   		}
			//echo"<pre>";print_r($model);
			if($model->save()){
				$flag = 1;
				$image = CUploadedFile::getInstancesByName('items');
	               if (isset($image) && count($image) >=1) {
	                   foreach ($image as $key => $value) {
	                       $item = new CommentImage();
	                       $item->comment_id = $model->id;
	                       $item->name = date("Y-m-d-H-i-s") . '-' . str_replace(' ', '-', $value->name);
	                       $item->save();
	                       $value->saveAs(Yii::app()->basePath . "/../uploads/comment/$item->name");
	                   }
	               }
			}
			echo json_encode($flag);
		}
	}
  public function actionGetlocation(){
	  if(!empty($_POST['latitude']) && !empty($_POST['longitude'])){
		//Send request and receive json data by latitude and longitude
		$url = 'http://maps.googleapis.com/maps/api/geocode/json?latlng='.trim($_POST['latitude']).','.trim($_POST['longitude']).'&sensor=false';
		$json = @file_get_contents($url);
		$data = json_decode($json);
		$status = $data->status;
		if($status=="OK"){
		//Get address from json data
			$location = $data->results[0]->formatted_address;
		}else{
			$location = '';
		}
		//Print address
		echo json_encode($location);
	 }
  }
  public function actionLoadmap(){
	  if(isset($_POST['dist'])){
		  $dist = $_POST['dist'];
		  $data = StoreBrand::model()->getTotalByDist($dist);
		  $district = Yii::app()->params['district'];
		  echo json_encode(array('total' => $data, 'district' => $district[$dist]));
	  }
  }
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
	 $gallery = Gallery::model()->getListByStore($_POST['id']);
      $this->render('store', compact(array('store', 'bg', 'store_near', 'district', 'store_related', 'gallery')));
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
	 $gallery = Gallery::model()->getListByProduct($_POST['id']);
      $this->render('product', compact(array('model', 'gallery')));
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
