<?php
/* Smarty version 3.1.36, created on 2021-08-25 22:12:58
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6126c06a14c221_52107188',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '947a0bc867517916ca050dd1d3d10bfbba75ff78' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\templates\\menu_sup.tpl',
      1 => 1618082235,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6126c06a14c221_52107188 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>

     <div class="cabecera">
     <img src="tapiceria_img/logos/<?php echo $_smarty_tpl->tpl_vars['logo_tapiceria']->value;?>
" width="10%">
     <!-- <img src="tapiceria/logos/logo.jpg" width="10%">-->
     <div class="titulo">
      TAPICERIA "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
"
	 </div>
     <div class="usuario">
    	Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b>
        Rol:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b>
  </div>
  </div>
</body>
</html>  <?php }
}
