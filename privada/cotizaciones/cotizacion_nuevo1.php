<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
$__nombre = $_POST["nombre"];
$__monto_total_cotizacion = $_POST["monto_total_cotizacion"];
$__fecha_cotizacion = $_POST["fecha_cotizacion"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tapiceria"] = 1;
	$reg["nombre"] = $__nombre;
	$reg["monto_total_cotizacion"] = $__monto_total_cotizacion ;
	$reg["fecha_cotizacion"] = $__fecha_cotizacion;

	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("cotizaciones", $reg , "INSERT");

	if ($rs1) {
		header("Location: cotizaciones.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("cotizacion_nuevo1.tpl");
	}
 ?>