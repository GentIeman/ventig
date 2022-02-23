<?php
$posts = R::load('posts', $_GET['post_id']);
$posts->post_title = trim($_POST['title']);
$posts->post_description = trim($_POST['description']);
$posts->post_category = $_POST['category'];
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Обновление поста");
}
R::store($posts);
header("Location:main.php?section=profile&action=profile&id=" . $_GET['user_id']);
?>