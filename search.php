<?php
require("./libs/Smarty.class.php");
require("db.php");
$posts = R::dispense('posts');
$smarty = new Smarty();

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'search') {
        $title = $_POST["title"];
        $posts = R::find('posts', 'post_title LIKE ?', ["%$title%"]);
        $smarty->assign('is_search', isset($_GET['search']));
        $smarty->assign('posts', $posts);
    }
}


if (isset($_SESSION['user'])) {
    $smarty->assign('user', $_SESSION['user']);
}

$smarty->display('search.tpl');