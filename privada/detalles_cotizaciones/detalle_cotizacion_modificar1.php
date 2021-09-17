<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_detalle_cotizacion = $_POST["id_detalle_cotizacion"];
$__id_cotizacion = $_POST["id_cotizacion"];

$__cantidad = $_POST["cantidad"];
$__monto_parcial = $_POST["monto_parcial"];
$__descripcion = $_POST["descripcion"];


//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["detalle_cotizacion"] = $__detalle_cotizacion;
$reg["cantidad"] = $__cantidad;
$reg["monto_parcial"] = $__monto_parcial;
$reg["descripcion"] = $__descripcion;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("detalles_cotizaciones", $reg, "UPDATE", "id_detalle_cotizacion='".$__id_detalle_cotizacion."'");

if ($rs1) {
	header("Location: detalles_cotizaciones.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_detalle_cotizacion", $__id_persona);
	$smarty->display("detalle_cotizacion_modificar1.tpl");
}

?>