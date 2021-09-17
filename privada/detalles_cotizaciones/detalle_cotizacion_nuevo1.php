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
	$reg["id_tapiceria"] = 1;
	$reg["detalle_cotizacion"] = $__detalle_cotizacion;
	$reg["cantidad"] = $__cantidad;
	$reg["monto_parcial"] = $__monto_parcial;
	$reg["descripcion"] = $__descripcion;
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("detalles_cotizaciones", $reg , "INSERT");

	if ($rs1) {
		header("Location: detalles_cotizaciones.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("detalle_cotizacion_nuevo1.tpl");
	}
 ?>