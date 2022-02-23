<?php
$posts = R::dispense('posts');
$posts->post_title = trim($_POST["title"]);
$posts->post_description = trim($_POST["description"]);
$posts->post_category = $_POST["category"];
$users = R::load('users', $_GET['id']);
$users->ownPostsList[] = $posts;
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Добавление поста");
}
R::store($users);
header('Location:main.php?section=profile&action=profile&id=' . $_GET['id']);
?>