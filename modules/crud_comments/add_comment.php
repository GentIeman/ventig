<?php
$comments->comment_content = $_POST['comment'];
$posts = R::load('posts', $_GET['id']);
$users = R::load('users', $_GET['user_id']);
$posts->ownCommentsList[] = $comments;
$users->ownCommentsList[] = $comments;
R::storeAll([$posts, $users]);
header('Location:main.php?section=posts&action=post&id=' . $_GET['id']);
?>