<?php
$this->breadcrumbs = array(
    'View Control'
);
$invite = array('shop' => 'Cửa hàng', 'product'=>'Sản phẩm', 'event' => 'Sự kiện');
?>
<div class="panel panel-default">
    <div class="panel-heading">Contact List</div>
    <div class="panel-body">
        <table class="" border="0" width="100%" cellpadding="0" cellspacing="0">
          <tr>
            <td width="200">Tên</td>
            <td><?php echo $model->name;?></td>
          </tr>
          <tr>
            <td>Email</td>
            <td><?php echo $model->email;?></td>
          </tr>
          <tr>
            <td>Bạn là</td>
            <td><?php echo $model->who;?></td>
          </tr>
          <tr>
            <td>Bạn muốn giới thiệu</td>
            <td><?php echo $invite[$model->invite];?></td>
          </tr>
          <tr>
            <td>Ngành hàng</td>
            <td>
              <?php
              if($model->invite !== 'event'){
                $cate = StoreCategory::model()->getList2();
                echo $cate[$model->category];
              }else{
                echo $model->category;
              }
              ?>
            </td>
          </tr>
          <tr>
            <td>Tên cửa hàng</td>
            <td><?php echo $model->shop_name;?></td>
          </tr>
          <?php if($model->facebook || $model->instagram || $model->website){?>
            <tr>
              <td>Kết nối</td>
              <td>
                <?php
                  if($model->facebook)
                    echo $model->facebook;
                  ?>
                <?php
                  if($model->instagram)
                    echo $model->instagram;
                  ?>
                <?php
                  if($model->website)
                    echo $model->website;
                  ?>
              </td>
            </tr>
          <?php }?>
          <tr>
            <td>Địa chỉ</td>
            <td><?php echo $model->address;?></td>
          </tr>
          <tr>
            <td>Giới thiệu cửa hàng</td>
            <td><?php echo $model->shop_intro;?></td>
          </tr>
		<tr>
            <td>Ngày gửi</td>
            <td><?php echo $model->added_date;?></td>
          </tr>
        </table>
    </div>
</div>
