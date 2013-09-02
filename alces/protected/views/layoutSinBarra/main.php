<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="es" />
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->theme->baseUrl; ?>/css/styles.css" />
    <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    <?php Yii::app()->bootstrap->register(); ?>
</head>

<body>
<div class="container" style="text-align: center;width: 50%;" id="page">

    <?php if(isset($this->breadcrumbs)):?>
        <?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
            'links'=>$this->breadcrumbs,
        )); ?><!-- breadcrumbs -->
    <?php endif?>

    <?php echo $content; ?>

    <div class="clear"></div>

    <div id="footer">
        Copyright &copy; <?php echo date('Y'); ?> Los Alces.<br/>
        Todos los Derechos Reservados.<br/>
    </div><!-- footer -->

</div><!-- page -->

</body>
</html>
