<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_producto_proveedor = $_POST["id_producto_proveedor"];

$__precio_producto = $_POST["precio_producto"];
$__detalle = $_POST["detalle"];


//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["precio_producto"] = $__precio_producto;
$reg["detalle"] = $__detalle;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("productos_proveedores", $reg, "UPDATE", "id_producto_proveedor='".$__id_producto_proveedor."'");

if ($rs1) {
	header("Location: productos_proveedores.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_producto_proveedor", $__id_persona);
	$smarty->display("producto_proveedor_modificar1.tpl");
}

?>