<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_cotizacion = $_POST["id_cotizacion"];
$__id_cliente = $_POST["id_cliente"];

$__monto_total_cotizacion = $_POST["__monto_total_cotizacion"];
$__fecha_cotizacion = $_POST["__fecha_cotizacion"];

//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["__monto_total_cotizacion"] = $__monto_total_cotizacion;
$reg["__fecha_cotizacion"] = $__fecha_cotizacion;

$reg["detalle_cotizacion"] = $_SESSION["sesion_id_detalle_cotizacion"];
$rs1 = $db->AutoExecute("cotizaciones", $reg, "UPDATE", "id_cotizacion='".$__id_cotizacion."'");

if ($rs1) {
	header("Location: cotizaciones.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_cotizacion", $__id_persona);
	$smarty->display("cotizacion_modificar1.tpl");
}

?>