<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$__id_tapizado = $_REQUEST["id_tapizado"];

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					  FROM 	tapizados
					  WHERE id_tapizado = ?
					");
$rs = $db->GetAll($sql, array($__id_tapizado));
$smarty->assign("tapizado", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("tapizado_modificar.tpl");
?>