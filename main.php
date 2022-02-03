<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

// глобальные переменный для заимодейсвия с бд
$comments=R::dispense('comments');
$posts = R::dispense('posts');
$users = R::dispense('users');


// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');