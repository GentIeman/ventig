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

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'post') {
        $post = R::load('posts', $_GET['id']);
        $smarty->assign('post', $post);
        $smarty->assign('posts', $smarty->fetch('post.tpl'));
    }
} else {
    $posts = R::findAll('posts');
    $smarty->assign('all_posts', $posts);
    $smarty->assign('posts', $smarty->fetch('posts.tpl'));
}

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');