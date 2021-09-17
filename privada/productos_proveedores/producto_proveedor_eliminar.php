<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_producto_proveedor = $_REQUEST["id_producto_proveedor"];

$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_persona ESTA COMO HERENCIA*/
$sql = $db->Prepare("SELECT *
					  FROM 	productos_proveedores
					  WHERE id_producto_proveedor = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_producto_proveedor));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("productos_proveedores", $reg, "UPDATE", "id_producto_proveedor='".$__id_producto_proveedor."'");
	header("Location: productos_proveedores.php");
	exit();

}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("producto_proveedor_eliminar.tpl");
}
?>