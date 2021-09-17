<?php
/* Smarty version 3.1.36, created on 2021-09-17 03:44:51
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\rpt_tapizados_diseño.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61440f338b7bf7_59607797',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd67ede6baa651416b1ed345c7dfe854d01377365' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\rpt_tapizados_diseño.tpl',
      1 => 1631850284,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61440f338b7bf7_59607797 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="UTF-8">
		
		<?php echo '<script'; ?>
 type="text/javascript">
			function validar() {
				disenio = document.formu.disenio.value;
				if(document.formu.disenio.value == "") {
					alert("Por favor seleccione el diseño de tapizado");
					document.formu.disenio.focus();
					return;
				}
				ventanaCalendario = window.open("rpt_tapizados_diseño1.php?disenio=" + disenio, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		<?php echo '</script'; ?>
>
		
	</head>
<body>
	<div class="formu_ingreso_datos">
	<h2>RPT DE TAPIZADOS POR SU DISEÑO</h2>
	<form method="post" name="formu">
			<p>
				<b>*Seleccione el diseño de tapizado</b>
				<select name="disenio">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="recta para micro">Recta para micro</option>
					<option value="abanico">Abanico</option>
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
