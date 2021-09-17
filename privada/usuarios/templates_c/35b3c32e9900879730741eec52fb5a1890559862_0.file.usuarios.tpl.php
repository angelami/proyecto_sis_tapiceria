<?php
/* Smarty version 3.1.36, created on 2021-09-01 15:13:30
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\usuarios\templates\usuarios.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_612f989a48e632_51689257',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '35b3c32e9900879730741eec52fb5a1890559862' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\usuarios\\templates\\usuarios.tpl',
      1 => 1618666930,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_612f989a48e632_51689257 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css" >
	<meta http-equiv="Content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="titulo_listado">
		<h1>USUARIOS</h1>
	</div>
	<div class="titulo_nuevo">
				<form name="formNuevo" method="post" action="usuario_nuevo.php">
					<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
					</a>
				</form>
			</div>

	<center >
		<table class="listado">
			
			<tr>
				<th>NRO</th><th>USUARIO</th><!--th>CLAVE</th>--><th>PERSONA</th>
				<th><img src="../../images/modif.png" width="25px" height="25px"></th><th><img src="../../images/eliminar.png" width="25px" height="25px"></th></th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['usuarios']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['usuario_1'];?>
</td>
				<!--<td><?php echo $_smarty_tpl->tpl_vars['r']->value['clave'];?>
</td>-->
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['ap'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['am'];?>
 <?php echo $_smarty_tpl->tpl_vars['r']->value['nombres'];?>
</td>
				<td align="center">
					<form name="formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
" method="post" action="usuario_modificar.php">
						<input type="hidden" name="id_usuario" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
">
						<input type="hidden" name="id_persona" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_persona'];?>
">
						<a href="javascript:document.formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
.submit();" title="Modificar UsuarioS">Modificar>> </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
" method="post" action="usuario_eliminar.php">
						<input type="hidden" name="id_usuario" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
">
						<a href="javascript:document.formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_usuario'];?>
.submit();" title="Eliminar Usuario" onclick='javascript:return(confirm(" Desea realmente Eliminar al usuario:::<?php echo $_smarty_tpl->tpl_vars['r']->value['usuario'];?>
?"));'>Eliminar>>
						</a>
					</form>
				</td>
			<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>	
			</tr>
		</table>
	</center>
</body>
</html><?php }
}
