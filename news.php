<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

$posts = R::dispense('posts');

$posts = R::find('posts', 'post_category LIKE ?', ["%новости%"]);
$smarty->assign('all_posts', $posts);
$smarty->assign('user', $_SESSION['user']);
$smarty->assign('posts', $smarty->fetch('posts.tpl'));

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('news.tpl');