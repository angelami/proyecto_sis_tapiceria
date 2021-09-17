<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_pedido = $_POST["id_pedido"];

$__fecha_entrega = $_POST["fecha_entrega"];
$__fecha_pedido = $_POST["fecha_pedido"];
$__monto_total_pedido = $_POST["monto_total_pedido"];


//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["fecha_entrega"] = $__fecha_entrega;
$reg["fecha_pedido"] = $__fecha_pedido;
$reg["monto_total_pedido"] = $__monto_total_pedido;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("pedidos", $reg, "UPDATE", "id_pedido='".$__id_pedido."'");

if ($rs1) {
	header("Location: pedidos.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_pedido", $__id_pedido);
	$smarty->display("pedido_modificar1.tpl");
}

?>