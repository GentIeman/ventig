<?php
$comments = R::dispense('comments');
$comments->comment_content = $_POST['comment'];
$posts = R::load('posts', $_GET['id']);
$posts->ownCommentsList[] = $comments;
R::store($posts);
header('Location:main.php?section=posts&action=post&id=' . $_GET['id']);
?>