<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");


$nombre = strip_tags(stripcslashes($_POST["nombre"]));
$marca = strip_tags(stripcslashes($_POST["marca"]));


//$db->debug=true;
if ($nombre or $marca ){
	$sql3 = $db->Prepare("SELECT*
					 FROM productos
					 WHERE nombre LIKE ?
	      			 AND marca LIKE ?
					 AND estado <> '0'
							");
$rs3 = $db->GetAll($sql3, array($nombre."%", $marca."%"));
if ($rs3){
	echo "<center>
	<table class='listado'>
	<tr>
	   </th><th>NOMBRE</th><th>MARCA</th><th>SELECCIONE</th>
	</tr>";
	foreach ($rs3 as $k => $fila) {
		     $str = $fila["nombre"];
		     $str1 = $fila["marca"];
		    
		     echo "<tr>
		     		<td align='center'>".resaltar($nombre, $str)."</td>
		     		<td>".resaltar($marca, $str1)."</td>
		     		<td align='center'>
		     			<input type='radio' name='seleccione' value='".$fila['id_producto']."'onclick='mostrar(".$fila["id_producto"].")'>
		     			</td>

		     </tr>";
	}
	echo "</table>
	</center>";
} else {
	echo "<center><b> EL PRODUCTO NO EXISTE!!</b></center><br>";
	}
}
?>