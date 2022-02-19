<?php
$posts->post_title = $_POST["title"];
$posts->post_description = $_POST["description"];
$posts->post_category = $_POST["category"];
$users = R::load('users', $_GET['id']);
$users->ownPostsList[] = $posts;
R::store($users);
header('Location:main.php?action=profile&id=' . $_GET['id']);
?>