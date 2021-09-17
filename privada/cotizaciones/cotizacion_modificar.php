<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_cotizacion = $_REQUEST["id_cotizacion"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	cotizaciones
					  WHERE id_cotizacion = ?
					");
$rs = $db->GetAll($sql, array($__id_cotizacion));
$smarty->assign("cotizacion", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("cotizacion_modificar.tpl");
?>