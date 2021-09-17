<?php
/* Smarty version 3.1.36, created on 2021-09-17 02:51:43
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\rpt_productos_marca1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_614402bf404fc5_60085215',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1b36a2def3def7392308449e42f66f0ca2985211' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\rpt_productos_marca1.tpl',
      1 => 1628557548,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_614402bf404fc5_60085215 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
	<head>
		<?php echo '<script'; ?>
 type="text/javascript">
			var ventanaCalendario=false
			function imprimir() {
				if(confirm('Desea Imprimir ?')){
					window.print();
				}
			}
		<?php echo '</script'; ?>
>
	</head>
	<body style='cursor:pointer;cursor:hand' onclick='imprimir();'>
 	<table width="100%" border="0">
		<tr>
			<td> 
				<img src="../tapiceria_img/logos/<?php echo $_smarty_tpl->tpl_vars['logo_tapiceria']->value;?>
" width="70%"> </td>
			</td>
			<td align="center" width="80%">
				<h1>PRODUCTOS -- MARCA</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>NOMBRE</th><th>MARCA</th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['productos_marca1']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
				<td><?php if ($_smarty_tpl->tpl_vars['r']->value['marca'] == 'Brasilero') {?>BRASILERO<?php } else { ?>AMERICANO<?php }?></td>
				<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
				<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</tr>
		</table>
		<br><br>
	</center>
	<b>FECHA: </b> <?php echo $_smarty_tpl->tpl_vars['fecha']->value;?>

</body>
</html><?php }
}
