<?php
/* Smarty version 3.1.36, created on 2021-09-17 02:51:40
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\rpt_productos_marca.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_614402bc1f71a0_78644356',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fedfa3d422c2c440ed02836e14963ce6a3199b46' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\rpt_productos_marca.tpl',
      1 => 1628557550,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_614402bc1f71a0_78644356 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="utf-8">
		
		<?php echo '<script'; ?>
 type="text/javascript">
			function validar() {
			marca = document.formu.marca.value;
			if (document.formu.marca.value == "") {
				alert("Seleccione la marca");
				document.formu.marca.focus();
				return;
			}
				ventanaCalendario = window.open("rpt_productos_marca1.php?marca=" + marca, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		<?php echo '</script'; ?>
>
		
	</head>
<body>
	<div class="formu_ingreso_datos">
		<h2>RPT DE PRODUCTOS POR MARCA</h2>
		<form method="post" name="formu">
			<p>
				<b>*Seleccione marca</b>
				<select name="marca">
					<option value="">--Seleccione--</option>
					<option value="T">Todos</option>
					<option value="Brasilero">Brasilero</option>
					<option value="Americano">Americano</option>
				</select>
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton">
			</p>
		</form>
	</div>
</body>
</html>
<?php }
}
