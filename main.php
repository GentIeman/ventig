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
            $smarty->assign('is_comment_edit', isset($_GET['edit_comment']));
            $smarty->assign('user', $_SESSION['user']);
            if (isset($_GET['edit_comment'])) {
                $smarty->assign('comment', R::load('comments', $_GET['edit_comment']));
            }
            $smarty->assign('posts', $smarty->fetch('post.tpl'));
            break;
        case 'add_comment':
            $comments->comment_content = $_POST['comment'];
            $posts = R::load('posts', $_GET['id']);
            $posts->ownCommentsList[] = $comments;
            R::store($posts);
            header('Location:main.php?action=post&id=' . $_GET['id']);
            break;
        case 'save_comment':
            $comment = R::load('comments', $_GET['comment_id']);
            $comment->comment_content = $_POST['comment'];
            R::store($comment);
            $_GET['id'] = $comment->post_id;
            header('Location:main.php?action=post&id=' . $_GET['post_id']);
        case 'delete_comment':
            $comment = R::load('comments', $_GET['comment_id']);
            R::trash($comment);
            header('Location:main.php?action=post&id=' . $_GET['post_id']);
    }
} else {
    $posts = R::findAll('posts');
    $smarty->assign('all_posts', $posts);
    $smarty->assign('user', $_SESSION['user']);
    $smarty->assign('posts', $smarty->fetch('posts.tpl'));
}

// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');