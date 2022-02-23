<?php
$comments = R::dispense('comments');
$comments->comment_content = trim($_POST['comment']);
$posts = R::load('posts', $_GET['id']);
$users = R::load('users', $_GET['user_id']);
$posts->ownCommentsList[] = $comments;
$users->ownCommentsList[] = $comments;
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Добавление комментария");
}
R::storeAll([$posts, $users]);
header('Location:main.php?section=posts&action=post&id=' . $_GET['id']);
?>