<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$smarty = new Smarty;

//$db->debug=true;

/*$sql = $db->Prepare("SELECT*
					 FROM tapiceria t, clientes cl
					 WHERE t.id_tapiceria = cl.id_tapiceria
					 AND t.estado <> '0'
					 AND cl.estado <> '0'
					 ORDER BY (t.id_tapiceria) DESC
					");*/
$sql = $db->Prepare("SELECT*
					 FROM tapizados
					 WHERE estado <> '0'
					 ORDER BY (id_tapizados) DESC
					");
$rs = $db->GetAll($sql);



$sql1 = $db->Prepare("SELECT*
					 FROM tapiceria
					 WHERE id_tapiceria = 1
					 AND estado <> '0'
					");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_tapiceria = $rs1[0]["logo_tapiceria"];

$fecha = date("Y-m-d H:i:s");

$smarty->assign("tapizados1", $rs);
$smarty->assign("logo_tapiceria", $logo_tapiceria);
$smarty->assign("fecha", $fecha);


$smarty->assign("direc_css", $direc_css);
$smarty->display ("tapizados1.tpl");
?>