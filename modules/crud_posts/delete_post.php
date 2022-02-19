<?php
$post = R::load('posts', $_GET['post_id']);
R::trash($post);
header('Location:main.php');
?>