<?php

$form = $this->beginWidget('CActiveForm', array(

'id' => 'gallery-grid',

'enableClientValidation' => true,

'htmlOptions' => array(

    'class' => 'no-margin',

    'enctype' => 'multipart/form-data',

    ),

));
$products = Cms::model()->getList('san-pham');
foreach ($products->getData() as $key => $value) {
    $title = json_decode($value['title'], true);
    $arrProduct[$value['id']] = $title['vi'];
}
?>    

    <div class="row">

        <div class="col-lg-4">

            <div class="form-group">

                <?php echo $form->labelEx($model, 'name', array('class' => 'control-label'));?>

                <?php echo $form->textField($model, 'name', array('class'=>'form-control')); ?>

                <?php echo $form->error($model, 'name'); ?>

            </div>

        </div>

        <div class="col-lg-4">

            <div class="form-group">

                <?php echo $form->labelEx($model, 'roomtype_id', array('class' => 'control-label'));?>

                <?php echo $form->dropDownlist($model, 'roomtype_id', array('')+$arrProduct, array('class'=>'form-control')); ?>

                <?php echo $form->error($model, 'roomtype_id'); ?>

            </div>

        </div>
        <?php if(!isset($_GET['id'])){?>
        <div class="col-lg-4">

            <div class="form-group">       

                <lebel>Photos</lebel>

                <input multiple="" type="file" name="items[]" />

            </div>

        </div>
    <?php }?>
    </div>

    <div class="row">

        <div class="col-lg-12">

            <button class="btn btn-info" type="submit">

                <i class="icon-ok bigger-110"></i>

                Submit

            </button>

        </div>

    </div>

<?php $this->endWidget(); ?>