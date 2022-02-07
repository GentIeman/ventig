<?php
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

$smarty->display('profile.tpl');