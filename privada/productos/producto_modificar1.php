<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_producto = $_POST["id_producto"];
$__nombre = $_POST["nombre"];
$__marca = $_POST["marca"];

//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["nombre"] = $__nombre;
$reg["marca"] = $__marca;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("productos", $reg, "UPDATE", "id_producto='".$__id_producto."'");

if ($rs1) {
	header("Location: productos.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_producto", $__id_producto);
	$smarty->display("producto_modificar1.tpl");
}

?>