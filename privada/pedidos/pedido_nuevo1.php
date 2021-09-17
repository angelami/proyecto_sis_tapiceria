<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

	$__fecha_entrega = $_POST["fecha_entrega"];
	$__fecha_pedido = $_POST["fecha_pedido"];
	$__monto_total_pedido = $_POST["monto_total_pedido"];


//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tapiceria"] = 1;
	$reg["fecha_entrega"] = $__fecha_entrega;
	$reg["fecha_pedido"] = $__fecha_pedido;
	$reg["monto_total_pedido"] = $__monto_total_pedido;

	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("pedidos", $reg , "INSERT");

	if ($rs1) {
		header("Location: pedidos.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("pedido_nuevo1.tpl");
	}
 ?>