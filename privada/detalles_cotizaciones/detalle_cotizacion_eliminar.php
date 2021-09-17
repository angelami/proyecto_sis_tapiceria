<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_detalle_cotizacion = $_REQUEST["id_detalle_cotizacion"];
$__id_cotizacion = $_REQUEST["id_cotizacion"];
$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_persona ESTA COMO HERENCIA*/
$sql = $db->Prepare("SELECT *
					  FROM 	cotizaciones
					  WHERE id_detalle_cotizacion = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_detalle_cotizacion));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_usuario"] = $_SESSION["sesion_id_usuario"];
	$rs1 = $db->AutoExecute("detalles_cotizaciones", $reg, "UPDATE", "id_detalle_cotizacion='".$__id_detalle_cotizacion."'");
	header("Location: detalles_cotizaciones.php");
	exit();

}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("detalle_cotizacion_eliminar.tpl");
}
?>