<?php
$this->breadcrumbs = array(
    'View Comment Control'
);?>

<div class="panel panel-default">
    <div class="panel-heading">View Detail</div>
    <div class="panel-body">
        <table class="items table table-bordered table-condensed table-hover table-striped">
		   <tbody>
			   <tr>
				   <td width="100">Thành viên</td>
				   <td><?php echo $model['user']['fullname'];?></td>
			   </tr>
			   <tr>
				   <td>Cửa hàng</td>
				   <td><?php echo $model['store']['name'];?></td>
			   </tr>
			   <tr>
				   <td>Vật dụng</td>
				   <td><?php echo $model['category']['name'];?></td>
			   </tr>
			   <tr>
				   <td>Giá</td>
				   <td><?php echo $model['price'];?></td>
			   </tr>
			   <tr>
				   <td>Đánh giá</td>
				   <td><?php echo $model['rating'];?></td>
			   </tr>
			   <tr>
				   <td>Tiêu đề</td>
				   <td><?php echo $model['title'];?></td>
			   </tr>
			   <tr>
				   <td>Nội dung</td>
				   <td><?php echo $model['content'];?></td>
			   </tr>
			   <tr>
				   <td>Lượt like</td>
				   <td><?php
					   $likes = CommentLikes::model()->getQuantity($model['id']);
					   echo $likes;?>
				   </td>
			   </tr>
			   <tr>
				   <td>Ngày</td>
				   <td><?php echo $model['date'];?></td>
			   </tr>
			   <tr>
				   <td>Hình</td>
				   <td>
					   <?php
					   $photos = CommentImage::model()->getListByCMT($model['id']);

					   ?>
					   <?php if($photos && count($photos->getData())){?>
						   <ul class="list-img">
							   <?php foreach($photos->getData() as $gl){
								    echo '<li><img src="'.Yii::app()->baseUrl.'/uploads/comment/'.$gl['name'].'" class="img-resposive"></li>';
							   }?>
						   </ul>
					   <?php }?>
				   </td>
			   </tr>
		   </tbody>
	   </table>
    </div>
</div>
<style>
table tr td:first-child{
	font-weight: bold;
}
.list-img li{
	display: inline-block;
	max-width: 100px;
}
</style>
