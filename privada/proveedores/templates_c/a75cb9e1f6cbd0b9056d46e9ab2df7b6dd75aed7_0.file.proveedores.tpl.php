<?php
/* Smarty version 3.1.36, created on 2021-09-17 22:26:20
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\proveedores\templates\proveedores.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6145160cae3d51_57666148',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a75cb9e1f6cbd0b9056d46e9ab2df7b6dd75aed7' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\proveedores\\templates\\proveedores.tpl',
      1 => 1618537245,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6145160cae3d51_57666148 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
</head>
<body>
	<div class="titulo_listado">
		<h1>
			PROVEEDORES
		</h1>
	</div>
		<div class="titulo_nuevo">
			<form name="formNuevo" method="post" action="proveedor_nuevo.php">
			<a href="javascript:document.formNuevo.submit();">
						Nuevo>>>
			</a>
			</form>
		</div>
	<center>
		<table class="listado">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>DIRECCION</th>
				<th><img src="../../images/modif.png" width="25px" height="25px"></th><th><img src="../../images/eliminar.png"width="25px" height="25px"></th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "0");?>
			<?php $_smarty_tpl->_assignInScope('total', ((string)($_smarty_tpl->tpl_vars['pagina']->value-1)));?>
			<?php $_smarty_tpl->_assignInScope('a', ((string)($_smarty_tpl->tpl_vars['numreg']->value*$_smarty_tpl->tpl_vars['total']->value)));?>
			<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1+$_smarty_tpl->tpl_vars['a']->value)));?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['proveedores']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['r']->value['direccion'];?>
</td>
				
				<td align="center">
	
			<form name="formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
" method="post" action="proveedor_modificar.php">
				<input type="hidden" name="id_proveedor" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
">
				     <a href="javascript:document.formModif<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
.submit();" title="Modificar proveedor Sistema">
				     	Modificar>>
					 </a>
					</form>
				</td>
				<td align="center">
					<form name="formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
" method="post" action="proveedor_eliminar.php">
						<input type="hidden" name="id_proveedor" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
">
						<a href="javascript:document.formElimi<?php echo $_smarty_tpl->tpl_vars['r']->value['id_proveedor'];?>
.submit();" title="Eliminar proveedor Sistema" onclick="javascript:return(confirm(' Desea realmente Eliminar al proveedor..?')); location.href='proveedor_eliminar.php'">
							Eliminar>>
						</a>
					</form>
				</td>
			<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>	
			</tr>
		</table>

		<!--PAGINACION--------------------------------->
		<table>
			<tr align="center">
				<td>
				<?php if (!empty($_smarty_tpl->tpl_vars['urlback']->value)) {?>
				<a onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['urlback']->value;?>
'" style="font-family: Verdana;font-size: 9px;cursor:pointer"; >&laquo;Anterior</a>
				<?php }?>
				<?php if (!empty($_smarty_tpl->tpl_vars['paginas']->value)) {?>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['paginas']->value, 'pag');
$_smarty_tpl->tpl_vars['pag']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['pag']->value) {
$_smarty_tpl->tpl_vars['pag']->do_else = false;
?>
						<?php if ($_smarty_tpl->tpl_vars['pag']->value['npag'] == $_smarty_tpl->tpl_vars['pagina']->value) {?>
							<?php if ($_smarty_tpl->tpl_vars['pagina']->value != '1') {?>|<?php }?> <b style="color:#FB992F;font-size: 12px;"> <?php echo $_smarty_tpl->tpl_vars['pag']->value['npag'];?>
</b>
							<?php } else { ?>
							| <a onclick="location.href ='<?php echo $_smarty_tpl->tpl_vars['pag']->value['pagV'];?>
'" style="cursor:pointer;"><?php echo $_smarty_tpl->tpl_vars['pag']->value['npag'];?>
 </a>
							<?php }?>
							<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
							<?php }?>
							<?php if ($_smarty_tpl->tpl_vars['numpaginas']->value > $_smarty_tpl->tpl_vars['numbotones']->value && !empty($_smarty_tpl->tpl_vars['urlnext']->value) && $_smarty_tpl->tpl_vars['pagina']->value < $_smarty_tpl->tpl_vars['numpaginas']->value) {?>
							| <a onclick="location.href ='<?php echo $_smarty_tpl->tpl_vars['urlnext']->value;?>
'" style="font-family: Verdana;font-size: 9px;cursor:pointer">
							Siguiente&raquo;</a>
							<?php }?>
					</td>	
			</tr>
		</table>
	</center>
</body>
</html><?php }
}
