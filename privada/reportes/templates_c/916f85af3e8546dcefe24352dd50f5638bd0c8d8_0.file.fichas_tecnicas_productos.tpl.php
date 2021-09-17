<?php
/* Smarty version 3.1.36, created on 2021-09-17 03:36:40
  from 'D:\wamp64\www\sis_tapiceria_1.25\privada\reportes\templates\fichas_tecnicas_productos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_61440d4832b702_26876435',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '916f85af3e8546dcefe24352dd50f5638bd0c8d8' => 
    array (
      0 => 'D:\\wamp64\\www\\sis_tapiceria_1.25\\privada\\reportes\\templates\\fichas_tecnicas_productos.tpl',
      1 => 1631849443,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61440d4832b702_26876435 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="utf-8">
		<?php echo '<script'; ?>
 type="text/javascript" src="../../ajax.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 type="text/javascript">
			function buscar() {
			var d1, d2, d3, d4, contenedor, ajax,url,param; 
				contenedor = document.getElementById('productos1');
			    d1 = document.formu.nombre.value;
				d2 = document.formu.marca.value;
				
				ajax = nuevoAjax();
				url = "ajax_buscar_productos.php"
				param = "nombre="+d1+"&marca="+d2;
				//alert(param);
				ajax.open("POST", url, true);
				ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				ajax.onreadystatechange = function() {
					if (ajax.readyState == 4) {
						contenedor.innerHTML = ajax.responseText;
					}
				}
				ajax.send(param);
			}
			function mostrar(id_producto) {
				var d1, ventanaCalendario;
				d1 = id_producto;
				//alert(id_persona);
				ventanaCalendario = window.open("fichas_tecnicas_productos1.php?id_producto=" + d1, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
	    	<?php echo '</script'; ?>
>
		</head>
	<body>
		<!----------BUSCADOR------------>
	<center>
		<h1> FICHAS TECNICAS DE PRODUCTOS </h1>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
				
				<th>
					<b>Nombre</b><br />
					<input type="text" name="nombre" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Marca</b><br />
					<input type="text" name="marca" value="" size="30" onkeyup="buscar()">
				</th>
				
			</tr>
			</table>
			</form>
	    	</center>
		    <!-----------BUSCADOR---------->
		    <center>
		    	<div id="productos1">
		    	</div>
		    </center>
	</body>
</html>
<?php }
}
