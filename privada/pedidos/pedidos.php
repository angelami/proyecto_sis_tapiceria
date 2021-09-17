<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"pedidos");

paginacion("pedidos.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM pedidos
					WHERE estado <> '0'
					AND id_pedido > 1
					ORDER BY id_pedido DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("pedidos", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("pedidos.tpl");
?>