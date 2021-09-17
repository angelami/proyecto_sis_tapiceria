<?php 
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__monto_estimado = $_POST["monto_estimado"];
$__objeto = $_POST["objeto"];
$__tipo_tapizado = $_POST["tipo_tapizado"];
$__color= $_POST["color"];
$__disenio= $_POST["disenio"];
$__descripcion = $_POST["descripcion"];

//$db->debug=true;

$smarty = new Smarty;

	$reg = array();
	$reg["id_tapiceria"] = 1;
	$reg["monto_estimado"] = $__monto_estimado ;
	$reg["objeto"] = $__objeto;
	$reg["tipo_tapizado"] = $__tipo_tapizado;
	$reg["color"] = $__color;
	$reg["disenio"] = $__disenio;
	$reg["descripcion"] = $__descripcion;
	
	$reg["fec_insercion"] = date("Y-m-d H:i:s");
	//$reg["fecha_modificacion"] = date("Y-m-d H:i:s") ;
	$reg["estado"] = '1';
	$reg["usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("tapizados", $reg , "INSERT");

	if ($rs1) {
		header("Location: tapizados.php");
		exit();
	} else{
		$smarty->assign("mensaje","ERROR: los datos no se insertaron!!!!!");
		$smarty->assign("direc_css",$direc_css);
		$smarty->display("tapizado_nuevo1.tpl");
	}
 ?>