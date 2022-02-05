<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

// глобальные переменный для взаимодейсвия с бд
$comments = R::dispense('comments');
$posts = R::dispense('posts');
$users = R::dispense('users');
$feedbacks = R::dispense('feedbacks');
$eventlog = R::dispense('eventlog');


// выборка всех постов из бд
function getPosts($smarty)
{
    $posts = R::findAll('posts');
    $smarty->assign('all_posts', $posts);
    $smarty->assign('content', $smarty->fetch('index.tpl'));
}

getPosts($smarty);

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');