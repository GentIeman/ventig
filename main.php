<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

// глобальные переменный для взаимодейсвия с бд
$comments=R::dispense('comments');
$posts = R::dispense('posts');
$users = R::dispense('users');
$feedbacks = R::dispense('feedbacks');
$eventlog = R::dispense('eventlog');


// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');