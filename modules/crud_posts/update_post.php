<?php
$posts = R::load('posts', $_GET['post_id']);
$posts->post_title = $_POST['title'];
$posts->post_description = $_POST['description'];
$posts->post_category = $_POST['category'];
R::store($posts);
header("Location:main.php?section=profile&action=profile&id=" . $_GET['user_id']);
?>