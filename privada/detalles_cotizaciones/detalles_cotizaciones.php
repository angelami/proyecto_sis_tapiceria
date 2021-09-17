<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"detalles_cotizaciones");

paginacion("detalles_cotizaciones.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM detalles_cotizaciones
					WHERE estado <> '0'
					AND id_cotizacion > 1
					ORDER BY id_detalle_cotizacion DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("detalles_cotizaciones", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("detalles_cotizaciones.tpl");
?>