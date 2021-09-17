<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");


$nombre = strip_tags(stripslashes($_POST["nombre"]));
$direccion = strip_tags(stripcslashes($_POST["direccion"]));

//$db->debug=true;

if ($nombre or $direccion){
	$sql3 = $db->Prepare("SELECT*
					 FROM proveedores
					 WHERE nombre LIKE ?
					 AND direccion LIKE ?
					 AND estado <> '0'
					");
$rs3 = $db->GetAll($sql3, array($nombre."%", $direccion."%"));

if ($rs3){
	echo "<center>
	<table width='60%' border='1'>
	<tr>
	   <th>NOMBRE</th><th>DIRECCION</th>
	</tr>";
	foreach ($rs3 as $k => $fila) {
		     $str = $fila["nombre"];
		     $str1 = $fila["direccion"];
		    
		     echo "<tr>
		     	
		     		<td align='center'>".resaltar($nombre, $str)."</td>
		     		<td>".resaltar($direccion, $str1)."</td>
		     		
		     		<td align='center'>
		     			<input type='radio' name='opcion' value='' onClick='buscar_proveedor(".$fila["id_proveedor"].")'>
		     		</td>
		          </tr>";
    }
	echo "</table>
	</center>";
} else {
	echo"<center><b> EL PROVEEDOR NO EXISTE!!</b></center><br>";
	echo"<center>
			<table class='listado'>
			<tr>
			<td><b>(*)Nombre</b></td><td><input type='text' name='nombre1' size='20' onkeyup='this.value=this.value.toUpperCase()'>
			</td>
			</tr>
			<tr>
			<td><b>Direccion</b></td>
			<td><input type='text' name='direccion1' size='30' onkeyup='this.value=this.value.toUpperCase()'>
			</td>
			</tr>
		
		<tr>
		<td align='center' colspan='2'>
		<input type='button' value='ADICIONAR PERSONA' onClick='insertar_persona()'>
		</td>
			</tr>
		</table>
		</center>
		";	
	}
}
?>