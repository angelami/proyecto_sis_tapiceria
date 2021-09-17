<?php
/* Smarty version 3.1.36, created on 2021-09-17 02:51:53
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\rpt_tapizados1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_614402c9f1de20_30135793',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '25d1ff5844acc4218190fe4cdc4d08952edc6d7c' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\rpt_tapizados1.tpl',
      1 => 1628557558,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_614402c9f1de20_30135793 (Smarty_Internal_Template $_smarty_tpl) {
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
				<h1>  TAPIZADOS -- TIPO </h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<th>NRO</th><th>MONTO ESTIMADO</th><th>OBJETO</th><th>TIPO TAPIZADO</th>
			</tr>
			<?php $_smarty_tpl->_assignInScope('b', "1");?>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tapizados1']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
			<tr>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['monto_estimado'];?>
</td> 
				<td><?php echo $_smarty_tpl->tpl_vars['r']->value['objeto'];?>
</td>
				<td><?php if ($_smarty_tpl->tpl_vars['r']->value['tipo_tapizado'] == 'cuerina de primera') {?>CUERINA DE PRIMERA<?php } else { ?>CUERINA COMUN<?php }?></td>
				<?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
				<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</tr>
		</table>
		<br><br>
		<b>Fecha:</b> <?php echo $_smarty_tpl->tpl_vars['fecha']->value;?>

	</center>
</body>
</html><?php }
}
