<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"detalle_pedidos");

paginacion("detalle_pedidos.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM detalle_pedidos
					WHERE estado <> '0'
					AND id_detalle_pedido > 1
					ORDER BY id_detalle_pedido DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("detalle_pedidos", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("detalle_pedidos.tpl");
?>