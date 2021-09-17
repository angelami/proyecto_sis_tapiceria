<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$fecha1 = $_REQUEST["fecha1"];
$fecha2 = $_REQUEST["fecha2"];
$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT*
					 FROM cotizaciones co
					 INNER JOIN clientes cli ON co.id_cliente = cli.id_cliente
					 WHERE fecha_cotizacion BETWEEN ? AND ?
					 AND co.estado <> '0'
					AND cli.estado <> '0'
					");
$rs = $db->GetAll($sql, array($fecha1, $fecha2));

$sql1 = $db->Prepare("SELECT*
					 FROM tapiceria
					 WHERE id_tapiceria = 1
					 AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tapiceria = $rs1[0]["logo_tapiceria"];

$smarty->assign("cotizaciones_fechas", $rs);
$smarty->assign("logo_tapiceria", $logo_tapiceria);
$smarty->assign("fecha1", $fecha1);
$smarty->assign("fecha2", $fecha2);

$smarty->assign("direc_css", $direc_css);
$smarty->display ("cotizaciones_fechas1.tpl");
?>