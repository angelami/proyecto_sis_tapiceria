<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_tapizado = $_POST["id_tapizado"];


$__monto_estimado = $_POST["monto_estimado"];
$__objeto = $_POST["objeto"];
$__tipo_tapizado = $_POST["tipo_tapizado"];
$__color= $_POST["color"];
$__disenio= $_POST["disenio"];
$__descripcion = $_POST["descripcion"];

//$__genero = $_POST["genero"];

//$db->debug=true;
$smarty = new Smarty;

$reg = array();
$reg["monto_estimado"] = $__monto_estimado ;
$reg["objeto"] = $__objeto;
$reg["tipo_tapizado"] = $__tipo_tapizado;
$reg["color"] = $__color;
$reg["disenio"] = $__disenio;
$reg["descripcion"] = $__descripcion;
	
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("tapizados", $reg, "UPDATE", "id_tapizado='".$__id_tapizado."'");

if ($rs1) {
	header("Location: tapizados.php");
	exit();
}else{
	$smarty->assign("mensaje","ERROR: Los datos no se modificaron!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_tapizado", $__id_tapizado);
	$smarty->display("tapizado_modificar1.tpl");
}

?>