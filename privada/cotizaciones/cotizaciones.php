
<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug = true;

contarRegistros($db,"cotizaciones");

paginacion("cotizaciones.php?", $smarty);
$sql3 = $db->Prepare("SELECT *
					FROM cotizaciones co, clientes cl
					WHERE co.id_cliente = cl.id_cliente
					AND co.estado <> '0'
					AND cl.estado <> '0'
					ORDER BY id_cotizacion DESC 
					LIMIT ? OFFSET ?
					");
$smarty->assign("cotizaciones", $db->GetAll($sql3, array($nElem, $regIni)));

$smarty->assign("direc_css", $direc_css);
$smarty->display("cotizaciones.tpl");
?>