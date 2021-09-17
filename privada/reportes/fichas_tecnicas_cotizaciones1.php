<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_cotizacion = $_REQUEST["id_cotizacion"];
//$id_cliente = $_REQUEST["id_cliente"];

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare ("SELECT *
					 FROM cotizaciones co, clientes cl
					 WHERE co.id_cliente = cl.id_cliente 
					 AND co.id_cotizacion = ?
					 AND co.estado <> '0'
					 AND cl.estado <> '0'
					");

$rs = $db->GetAll($sql, array($id_cotizacion)); //,array($id_cliente)
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

$smarty->assign("cotizacion", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("fichas_tecnicas_cotizaciones1.tpl");
?>