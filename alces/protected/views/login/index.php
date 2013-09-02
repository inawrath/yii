<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<?php /** @var BootActiveForm $form */
$form = $this->beginWidget('bootstrap.widgets.TbActiveForm', array(
    'id'=>'verticalForm',
    'htmlOptions'=>array('class'=>'well',
        'style'=>''),
)); ?>
 
<?php echo $form->textFieldRow($model, 'usuario', array('class'=>'span3')); ?>
<?php echo $form->passwordFieldRow($model, 'pass', array('class'=>'span3')); ?>
<br/>
<?php $this->widget('bootstrap.widgets.TbButton', array('buttonType'=>'submit', 'label'=>'Ingresar')); ?>
 
<?php $this->endWidget(); ?>