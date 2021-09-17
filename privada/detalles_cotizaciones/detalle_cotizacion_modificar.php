<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_detalle_cotizacion = $_REQUEST["id_detalle_cotizacion"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	detalles_cotizaciones
					  WHERE id_detalle_cotizacion = ?
					");
$rs = $db->GetAll($sql, array($__id_detalle_cotizacion));
$smarty->assign("detalle_cotizacion", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("detalle_cotizacion_modificar.tpl");
?>