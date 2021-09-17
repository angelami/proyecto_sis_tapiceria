<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		<script type="text/javascript" src="../../ajax.js"></script>
		<script type="text/javascript">
			function buscar() {
			var d1, d2, d3, d4, contenedor, ajax,url,param; 
				contenedor = document.getElementById('cotizaciones1');
			    d1 = document.formu.ci.value;
				d2 = document.formu.nombre.value;
				d3 = document.formu.monto_total_cotizacion.value;
				d4 = document.formu.fecha_cotizacion.value;
				ajax = nuevoAjax();
				url = "ajax_buscar_cotizaciones.php"
				param = "ci="+d1+"&nombre="+d2+"&monto_total_cotizacion="+d3+"&fecha_cotizacion="+d4;
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
			function mostrar(id_cotizacion) {
				var d1, ventanaCalendario;
				d1 = id_cotizacion;
				//alert(id_persona);
				ventanaCalendario = window.open("fichas_tecnicas_cotizaciones1.php?id_cotizacion=" + d1, "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
	    	</script>
		</head>
	<body>
		<!----------BUSCADOR------------>
	<center>
		<h1> FICHAS TECNICAS DE COTIZACIONES </h1>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
				<th>
					<b>C.I.</b><br />
					<input type="text" name="ci" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Nombre</b><br />
					<input type="text" name="nombre" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Monto Total Cotizacion</b><br />
					<input type="text" name="monto_total_cotizacion" value="" size="10" onkeyup="buscar()">
				</th>
				<th>
					<b>Fecha Cotizacion</b><br />
					<input type="text" name="fecha_cotizacion" value="" size="10" onkeyup="buscar()">
				</th>
			</tr>
			</table>
			</form>
	    	</center>
		    <!-----------BUSCADOR---------->
		    <center>
		    	<div id="cotizaciones1">
		    	</div>
		    </center>
	</body>
</html>
