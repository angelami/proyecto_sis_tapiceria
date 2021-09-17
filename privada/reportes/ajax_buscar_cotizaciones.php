<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$ci = strip_tags(stripcslashes($_POST["ci"]));
$nombre = strip_tags(stripcslashes($_POST["nombre"]));
$monto_total_cotizacion = strip_tags(stripcslashes($_POST["monto_total_cotizacion"]));
$fecha_cotizacion = strip_tags(stripcslashes($_POST["fecha_cotizacion"]));

//$db->debug=true;
if ($ci or $nombre or $monto_total_cotizacion or $fecha_cotizacion ){
	$sql3 = $db->Prepare("SELECT*
					 FROM cotizaciones co, clientes cl
					 WHERE co.id_cliente = cl.id_cliente
					 AND ci LIKE ?
					 AND nombre LIKE ?
					 AND monto_total_cotizacion LIKE ?
					 AND fecha_cotizacion LIKE ?
					 AND co.estado <> '0'
					 AND cl.estado <> '0'
					");
$rs3 = $db->GetAll($sql3, array($ci."%",$nombre."%", $monto_total_cotizacion."%", $fecha_cotizacion."%"));
if ($rs3){
	echo "<center>
	<table class='listado'>
	<tr>
	   <th>C.I.</th><th>NOMBRE</th><th>MONTO TOTAL COTIZACION</th><th>FECHA COTIZACION</th><th>SELECCIONE</th>
	</tr>";
	foreach ($rs3 as $k => $fila) {
		     $str = $fila["ci"];
		     $str1 = $fila["nombre"];
		     $str2 = $fila["monto_total_cotizacion"];
		     $str3 = $fila["fecha_cotizacion"];
		     echo "<tr>
		     		<td align='center'>".resaltar($ci, $str)."</td>
		     		<td>".resaltar($nombre, $str1)."</td>
		     		<td>".resaltar($monto_total_cotizacion, $str2)."</td>
		     		<td>".resaltar($fecha_cotizacion, $str3)."</td>
		     		<td align='center'>
		     			<input type='radio' name='seleccione' value='".$fila['id_cotizacion']."'onclick='mostrar(".$fila["id_cotizacion"].")'>
		     			</td>

		     </tr>";
	}
	echo "</table>
	</center>";
} else {
	echo "<center><b> LA COTIZACION NO EXISTE!!</b></center><br>";
	}
}
?>