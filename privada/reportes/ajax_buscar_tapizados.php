<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$objeto = strip_tags(stripcslashes($_POST["objeto"]));
$tipo_tapizado = strip_tags(stripcslashes($_POST["tipo_tapizado"]));
$color = strip_tags(stripcslashes($_POST["color"]));
$disenio = strip_tags(stripcslashes($_POST["disenio"]));

//$db->debug=true;
if ($objeto or $tipo_tapizado or $color or $disenio){
	$sql3 = $db->Prepare("SELECT*
					 FROM tapizados
					 WHERE objeto LIKE ?
					 AND tipo_tapizado LIKE ?
					 AND color LIKE ?
					 AND disenio LIKE ?
					 AND estado <> '0'
					");
$rs3 = $db->GetAll($sql3, array($objeto."%", $tipo_tapizado."%", $color."%", $disenio."%"));
if ($rs3){
	echo "<center>
	<table class='listado'>
	<tr>
	   <th>OBJETO</th><th>TIPO TAPIZADO</th><th>COLOR</th><th>DISEÑO</th><th>SELECCIONE</th>
	</tr>";
	foreach ($rs3 as $k => $fila) {
		     $str = $fila["objeto"];
		     $str1 = $fila["tipo_tapizado"];
		     $str2 = $fila["color"];
		     $str3 = $fila["disenio"];
		     echo "<tr>
		     		<td align='center'>".resaltar($objeto, $str)."</td>
		     		<td>".resaltar($tipo_tapizado, $str1)."</td>
		     		<td>".resaltar($color, $str2)."</td>
		     		<td>".resaltar($disenio, $str3)."</td>
		     		<td align='center'>
		     			<input type='radio' name='seleccione' value='".$fila['id_tapizado']."'onclick='mostrar(".$fila["id_tapizado"].")'>
		     			</td>

		     </tr>";
	}
	echo "</table>
	</center>";
} else {
	echo "<center><b> EL TAPIZADO NO EXISTE!!</b></center><br>";
	}
}
?>