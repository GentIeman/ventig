<?php
require("./libs/Smarty.class.php");
require("db.php");
$posts = R::dispense('posts');
$users = R::dispense('users');
$smarty = new Smarty();

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'user':
            $user = R::load('users', $_GET['id']);
            $smarty->assign('user', $user);
            $smarty->assign('posts', $user->ownPostsList);
            $smarty->assign('users', $smarty->fetch('profile.tpl'));
            break;
        case 'add_post':
            $posts->post_title = $_POST["title"];
            $posts->post_description = $_POST["description"];
            $posts->post_category = $_POST["category"];
            $users = R::load('users', $_GET['id']);
            $users->ownPostsList[] = $posts;
            R::store($users);
            header('Location:profile.php?action=user&id=' . $_GET['id']);
            break;
    }
}
$smarty->display('profile.tpl');