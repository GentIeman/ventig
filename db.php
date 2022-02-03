<?php
require("./libs/rb.php");

$host = "localhost:3306";
$db_name = "db_shepelev";
$user = "root";
$psw = "";
$charset = "utf8";
R::setup("mysql:host=$host;dbname=$db_name;charset=$charset", $user, $psw);

if (!R::testConnection()) {
    echo 'No DB connection!';
    exit;
}
