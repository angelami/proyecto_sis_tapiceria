<?php
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_cotizacion = $_REQUEST["id_cotizacion"];

$smarty = new Smarty;

//$db-> debug = true;

/*LAS CONSULTAS SE TIENEN QUE HACER CON TODAS LAS TABLAS EN LAS QUE id_cotizacion ESTA COMO HERENCIA*/
$sql = $db->Prepare("SELECT *
					  FROM detalles_cotizaciones
					  WHERE id_cotizacion = ?
					  AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($__id_cotizacion));

if (!$rs) {
	$reg = array();
	$reg["estado"] = '0';
	$reg["id_detalle_cotizacion"] = $_SESSION["sesion_id_detalle_cotizacion"];
	$rs1 = $db->AutoExecute("cotizacion", $reg, "UPDATE", "id_cotizacion='".$__id_persona."'");
	header("Location: cotizaciones.php");
	exit();

}else{
	$smarty->assign("mensaje","ERROR: Los datos no se eliminaron!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("cotizacion_eliminar.tpl");
}
?>