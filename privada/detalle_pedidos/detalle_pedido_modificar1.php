<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_detalle_pedido = $_POST["id_detalle_pedido"];

$__cantidad = $_POST["cantidad"];
$__descripcion = $_POST["descripcion"];
$__monto_parcial = $_POST["monto_parcial"];

//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["cantidad"] = $__cantidad;
$reg["descripcion"] = $__descripcion;
$reg["monto_parcial"] = $__monto_parcial;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("detalle_pedidos", $reg, "UPDATE", "id_detalle_pedido='".$__id_detalle_pedido."'");

if ($rs1) {
	header("Location: detalle_pedidos.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_detalle_pedido", $__id_detalle_pedido);
	$smarty->display("detalle_pedido_modificar1.tpl");
}

?>