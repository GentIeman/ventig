<?php
$comment = R::load('comments', $_GET['comment_id']);
$comment->comment_content = $_POST['comment'];
$comment->users_id = $_GET['user_id'];
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Обновление комментария");
}
R::store($comment);
header('Location:main.php?section=posts&action=post&id=' . $_GET['post_id']);
?>
