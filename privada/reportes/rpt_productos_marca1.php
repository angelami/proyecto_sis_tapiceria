<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$marca = $_REQUEST["marca"];

$smarty = new Smarty;

//$db->debug=true;

if ($marca == "T") {
	$sql = $db->Prepare("SELECT*
					 FROM productos
					 WHERE estado <> '0'
					");
	$rs = $db->GetAll($sql);
} else {
	$sql = $db->Prepare("SELECT*
					 FROM productos
					 WHERE marca = ?
					 AND estado <> '0'
					");
	$rs = $db->GetAll($sql, array($marca));
}

//logo autogestionable
$sql1 = $db->Prepare("SELECT*
					 FROM tapiceria
					 WHERE id_tapiceria = 1
					 AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tapiceria = $rs1[0]["logo_tapiceria"];
$smarty->assign("logo_tapiceria", $logo_tapiceria);

$fecha = date("Y-m-d H:i:s");
$smarty->assign("productos_marca1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display ("rpt_productos_marca1.tpl");
?>