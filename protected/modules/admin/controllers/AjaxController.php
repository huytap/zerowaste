<?php
class AjaxController extends AdminController{
	public function actionUpdate_photo_order(){
		if(isset($_REQUEST['id']) && isset($_REQUEST['neworder'])){
	    		$data = Item::model()->getListByGallery($_REQUEST['gallery']);
	    		$itemArray = $_REQUEST['arrItem'];
	    		$array=array();
			$flag = false;
	    		if(count($data->getData())>0){
	    			$i=1;
		    		foreach($data->getData() as $key => $dt){
		    			$dt->thumb_nails=0;
		    			$dt->display_order = $itemArray[$dt->id];
		    			if($itemArray[$dt->id]=1){
		    				$dt->thumb_nails = 1;
		    			}
					if($dt->update()){
						$flag= true;
					}else{
						$flag=false;
						break;
					}
		    		}
		    	}
			if($flag)
	    			echo json_encode(1);
			else {
				echo json_encode(0);
			}
    		}
	}
}
