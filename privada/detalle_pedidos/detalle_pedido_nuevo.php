<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty =new Smarty;
$smarty-> assign("direc_css", $direc_css);
$smarty->display("detalle_pedido_nuevo.tpl");
?>