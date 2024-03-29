<?php
$this->breadcrumbs = array(
    'Album Control' => array('admin'),
    'View'
);
$this->menu=array(
    array('label'=>'Upload more', 'url'=>array('productgallery/upload/id/'.$gallery['id'])),
);
?>
<div class="panel panel-default">
    <div class="panel-heading">Slider Control: <?php echo $gallery['name'];?>. Drag photo to sort order</div>
    <div class="panel-body wrapper-content" id="items">
    	<?php
        	$data = Item::model()->getListByGallery($gallery['id']);
        	if($data)
        	foreach($data->getData() as $dt){
        		echo '<div class="col-md-2" data-id="'.$dt['id'].'">';
        			echo '<img src="'.Yii::app()->baseUrl.'/timthumb.php?src='.Yii::app()->baseUrl.'/uploads/gallery/'.$dt['name'].'&h=150&w=150">';
        			echo '<div class="description">';
        				echo '<div class="col-md-6" style="cursor:pointer;">';
        					//echo '<span class="fa fa-pencil" onclick="showPopupUpdate('.$dt['id'].',\''.Yii::app()->baseUrl.'/uploads/gallery/'.$dt['name'].'\', this)"></span>';
        					$description=$dt['description'];
        					$title = $dt['title'];
        					$url = $dt['url'];

   						echo '<span class="title_" style="display:none;">'.$title.'</span>';
        					echo '<span class="des_" style="display:none;">'.$description.'</span>';
        					echo '<span class="url_" style="display:none;">'.$url.'</span>';

        					echo '</div>';
        				echo '<div class="col-md-6" style="text-align:right;cursor:pointer;"><span class="fa fa-times" onclick="deleteItem('.$dt['id'].', this)"></span></div>';
        			echo '</div>';
        		echo '</div>';
        	}

        ?>
    </div>
</div>
<div class="modal fade" id="altPhoto" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header ">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Cập nhật thông tin hình ảnh</h4>
            </div>
            <div class="modal-body ">
            	<div class="row">
	            	<div class="col-xs-12 p-none mb20" id="photoAlt">
	                    <img src="" class="img-responsive">
	                </div>
	            </div>
	            <div class="row">
		            <div class="panel panel-default">
		                <div class="panel-body">
		                    <div class="tab-content">
	                                <div class="form-group">
	                                    <label>Title</label>
	                                    <?php echo CHtml::textField("title[$key]", '', array('class' => 'form-control', 'placeholder' => 'Title')); ?>
	                                </div>
	                                <div class="row">
						            <div class="col-md-12">
					                    <div class="form-group">
					                        <label>Url</label>
					                        <?php echo CHtml::textField("url[$key]", '', array('class' => 'form-control', 'placeholder' => 'Link url')); ?>
					                    </div>
					            	</div>
					            </div>
	                                <div class="form-group">
	                                    <label>Description</label>
	                                    <?php echo CHtml::textArea("description[$key]", '', array('class' => 'form-control', 'rows'=>'6', 'placeholder' => 'Description')); ?>
	                                </div>
		                    </div>
		                </div>
		            </div><!-- /panel -->
		        </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="cancelAlt">Hủy</button>
                <button type="button" class="btn btn-primary" id="saveAlt">Lưu</button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<script type="text/javascript">
$(function(){
	var second_id = start=0;
	var arrItem = {}
	$.each($('#items').find('.col-md-2'), function(i, row){
				arrItem[$(row).attr('data-id')] = i+1;
			});console.log(arrItem)

	$('#items').sortable({
		start: function(event, ui) {
	        var tg2 = $(ui.item);
	        start = ui.item.index();
	       	second_id = parseInt(tg2.attr('data-id'));
	        console.log(arrItem)
	    },
		update: function( event, ui ) {
	        var $target = $(ui.item);
		    // Extract the PK of the item just dragged
		    var itemId = parseInt($target.attr('data-id'));
		    var galleryId = <?php echo $gallery['id']?>;
		    // Display order is 1-based in my database so add 1
		    var index = $target.index() + 1;
		    // Send REST call to server to update new display order
		    var url = "<?php echo Yii::app()->createUrl('admin/ajax/update_photo_order')?>";
		    //url += "?id="+ itemId.toString() + "&order=" + index.toString()+"&start="+start;
			$.each($('#items').find('.col-md-2'), function(i, row){
				arrItem[$(row).attr('data-id')] = i+1;
			});console.log(arrItem)
	        $.ajax({
		        url: url,
		        type: "post",
		        data:{arrItem: arrItem, id:itemId, neworder: index.toString(), gallery:galleryId, oldorder:(start+1)},
		        beforeSend: function(){
					$('#loading').show();
				},
		        dataType:'json',
		        success:function (data){
		            $('#loading').hide()
		        }
		    });
	    }
	});
    $( "#image-upload-list" ).disableSelection();
});
</script>
<script type="text/javascript">
	function showPopupUpdate(id, Linkimg, object){
		var description = $(object).parent().find('.des').html();
		$('#altField').val(description)
		$('#altPhoto').show();
		$('#altPhoto').addClass('in');
		$('#altField').val(description);
		$('#photoAlt').find('img').attr('src', Linkimg);

			$('#title_').val($(object).parent().find('.title_').html());
			$('#url_').val($(object).parent().find('.url_').html());
			$('#description_').val($(object).parent().find('.des').html());

		$('#saveAlt').click(function(){
			var data = {id:id}
				data['title_'] = $('#title_').val();
				data['des_'] = $('#description_').val();
				data['url_'] = $('#url_').val();
			console.log(data)
			$.ajax({
				url: '<?php echo Yii::app()->createUrl("admin/slideshow/updateitem");?>',
				type: 'post',
				dataType: 'json',
				data:data,
				beforeSend: function(){
					$('#loading').show();
				},
				success: function(data){
					$('#loading').hide()
					location.reload();
				}
			})
		});
		$('#cancelAlt, .close').click(function(){
			$('#altPhoto').hide();
			$('#altPhoto').removeClass('in');
			$('#altField').val('')
		})
	}

	function deleteItem(id, object){
		if(confirm('Are you sure you want to delete this photo?'))
		$.ajax({
			url: '<?php echo Yii::app()->createUrl("admin/slideshow/deleteItem");?>',
			type: 'post',
			dataType: 'json',
			data:{id: id},
			beforeSend: function(){
				$('#loading').show()
			},
			success: function(data){
				$(object).parent().parent().parent().remove();
				$('#loading').hide()
			}
		})
	}
</script>
