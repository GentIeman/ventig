<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$smarty = new Smarty();

$posts = R::dispense('posts');

$posts = R::find('posts', 'post_category LIKE ?', ["%классика%"]);
$smarty->assign('all_posts', $posts);
$smarty->assign('posts', $smarty->fetch('posts.tpl'));

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('classic.tpl');