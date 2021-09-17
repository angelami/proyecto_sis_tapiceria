<?php 
session_start(); /*inicio de sesion*/

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"tapizados");

paginacion("tapizados.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					FROM tapizados
					WHERE estado <> '0'
					ORDER BY id_tapizado DESC 
					LIMIT ? OFFSET ?
					");

$smarty->assign("tapizados", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("tapizados.tpl");
?>