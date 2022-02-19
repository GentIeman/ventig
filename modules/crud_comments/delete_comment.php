<?php
$comment = R::load('comments', $_GET['comment_id']);
R::trash($comment);
header('Location:main.php?action=post&id=' . $_GET['post_id']);
?>