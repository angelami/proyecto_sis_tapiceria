<?php
/* Smarty version 3.1.36, created on 2021-09-17 02:51:50
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\rpt_tapizados.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_614402c67ce509_25055414',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '583cb316b5eaba684013aa55a1458599055b4468' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\rpt_tapizados.tpl',
      1 => 1628557556,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_614402c67ce509_25055414 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="UTF-8">
		
		<?php echo '<script'; ?>
 type="text/javascript">
			function validar() {
				tipo_tapizado = document.formu.tipo_tapizado.value;
				if(document.formu.tipo_tapizado.value == "") {
					alert("Por favor seleccione el tipo de tapizado");
					document.formu.tipo_tapizado.focus();
					return;
				}
				ventanaCalendario = window.open("rpt_tapizados1.php?tipo_tapizado=" + tipo_tapizado, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		<?php echo '</script'; ?>
>
		
	</head>
<body>
	<div class="formu_ingreso_datos">
	<h2>RPT DE TAPIZADOS POR SU TIPO</h2>
	<form method="post" name="formu">
			<p>
				<b>*Seleccione el tipo de tapizado</b>
				<select name="tipo_tapizado">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="cuerina de primera">Cuerina de primera</option>
					<option value="cuerina comun">Cuerina comun</option>
				</select>
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton">
			</p>
	</form>
	</div>
	</body>
</html><?php }
}
