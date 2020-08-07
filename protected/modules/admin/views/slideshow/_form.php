<?php
$form = $this->beginWidget('CActiveForm', array(
'id' => 'category-form',
'enableClientValidation' => true,
'htmlOptions' => array(
    'class' => 'no-margin',
    'enctype' => 'multipart/form-data',
    ),
));?>
<?php
$type = Yii::app()->params['slide_type'];
?>
    <div class="row">
        <div class="col-lg-4">
            <div class="form-group">
                <?php echo $form->labelEx($model, 'name', array('class' => 'control-label'));?>
                <?php echo $form->dropDownlist($model, 'name', array('' => '--------------')+$type,array('class'=>'form-control')); ?>
                <?php echo $form->error($model, 'name'); ?>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="form-group">
                <?php echo $form->labelEx($model, 'description', array('class' => 'control-label'));?>
                <?php echo $form->textField($model, 'description', array('class'=>'form-control')); ?>
                <?php echo $form->error($model, 'description'); ?>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="form-group">
                <lebel>Photos</lebel>
                <input multiple="" type="file" name="items[]" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <button class="btn btn-info" type="submit">
                <i class="icon-ok bigger-110"></i>
                Submit
            </button>
        </div>
    </div>
<?php $this->endWidget(); ?>
<script type="text/javascript">
    $('#Gallery_name').change(function(){
        if($(this).val()=='room_hotel'){
            $('#roomtype').show()
        }else{
            $('#roomtype').hide();
            $('#Gallery_roomtype_id').val('')
        }
    })
</script>
