<?php
/* Smarty version 3.1.36, created on 2021-09-01 15:13:21
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\claves\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_612f9891dddd98_52976906',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4078bef3beafbb40f4f2dd56ccb1fd8f11d6c2c8' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\claves\\templates\\index.tpl',
      1 => 1623446904,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_612f9891dddd98_52976906 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<!--<link rel="stylesheet" type="text/css" href="../../css/colores.css">-->
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<?php echo '<script'; ?>
 type="text/javascript">
	  	function refrescar(){
	  		var p = window.parent;
	  		p.location.href='../';
	  	}
	  <?php echo '</script'; ?>
>
	
</head>
<body ONLOAD="self.setTimeout('refrescar()',1000);"><!--el tiempo de carga de espera-->
	<center>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage']->value;?>
</h1>
		<br>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage1']->value;?>
</h1>
	</center>
</body>
</html><?php }
}
