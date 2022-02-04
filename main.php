<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

// глобальные переменный для взаимодейсвия с бд
$comments=R::dispense('comments');
$posts = R::dispense('posts');
$users = R::dispense('users');
$feedback = R::dispense('feedback');
$eventlog = R::dispense('eventlog');

$feedback -> user_id = 'test';
$feedback -> content = 'test';

R::store($feedback);


// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');