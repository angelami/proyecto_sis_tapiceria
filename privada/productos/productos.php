<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"productos");

paginacion("productos.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM productos
					WHERE estado <> '0'
					AND id_producto > 1
					ORDER BY id_producto DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("productos", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("productos.tpl");
?>