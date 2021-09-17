<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_tapizado = $_REQUEST["id_tapizado"];

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT*
					 FROM tapizados
					 WHERE id_tapizado = ? 
					 AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($id_tapizado));
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

$smarty->assign("tapizado", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display ("fichas_tecnicas_tapizados1.tpl");
?>