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
    switch ($_GET['action']) {
        case 'post':
            $post = R::load('posts', $_GET['id']);
            $smarty->assign('post', $post);
            $smarty->assign('comments', $post->ownCommentsList);
            $smarty->assign('posts', $smarty->fetch('post.tpl'));
            break;
        case 'add_comment':
            $comments->comment_content = $_POST['comment'];
            $posts = R::load('posts', $_GET['id']);
            $posts->ownCommentsList[] = $comments;
            R::store($posts);
            header('Location:main.php?action=post&id=' . $_GET['id']);
            break;
    }
} else {
    $posts = R::findAll('posts');
    $smarty->assign('all_posts', $posts);
    $smarty->assign('posts', $smarty->fetch('posts.tpl'));
}

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');