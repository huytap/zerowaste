<?php
$this->breadcrumbs = array(
    'Gallery Control'
);
if(count($model)>0){
    $this->menu=array(
        array('label'=>'Upload more', 'url'=>array('gallery/upload/id/'.$model['id'])),
    );
}else{
    $this->menu=array(
        array('label'=>'Create new', 'url'=>array('gallery/create')),
    );
}

?>
<div class="panel panel-default">
    <div class="panel-heading">Drag photo to sort order</div>
    <div class="panel-body wrapper-content" id="items">
        <?php 
        if(count($model)>0){
            $data = Item::model()->getListByGallery($model['id']);
            foreach($data->getData() as $dt){
                echo '<div class="col-md-2" data-id="'.$dt['id'].'">';
                    echo '<img src="'.Yii::app()->baseUrl.'/timthumb.php?src='.Yii::app()->baseUrl.'/uploads/gallery/'.$dt['name'].'&h=150&w=150">';
                    echo '<div class="description">';
                        echo '<div style="text-align:right;cursor:pointer;"><span class="fa fa-times" onclick="deleteItem('.$dt['id'].', this)"></span></div>';
                    echo '</div>';
                echo '</div>';
            }
        }
        ?>
    </div>
</div>
<script type="text/javascript">
$(function(){
    var second_id = start=0;
    var arrItem = {}
    $.each($('#items').find('.col-md-2'), function(i, row){
                arrItem[$(row).attr('data-id')] = i+1;
            });

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
            var galleryId = <?php echo $model['id']?>;
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
    function deleteItem(id, object){
        if(confirm('Are you sure you want to delete this photo?'))
        $.ajax({
            url: '<?php echo Yii::app()->createUrl("admin/gallery/deleteItem");?>',
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