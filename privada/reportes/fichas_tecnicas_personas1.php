<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_persona = $_REQUEST["id_persona"];

$smarty = new Smarty;

//$db->debug=true;

$sql = $db->Prepare("SELECT*
					 FROM _personas
					 WHERE id_persona = ? 
					 AND estado <> '0'
					");
$rs = $db->GetAll($sql, array($id_persona));
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

$smarty->assign("persona", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display ("fichas_tecnicas_personas1.tpl");
?>