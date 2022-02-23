<?php
$post = R::load('posts', $_GET['post_id']);
R::trash($post);
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Удаление поста");
}
header((isset($_GET['location']) && $_GET['location'] === 'profile') ? 'Location:main.php?section=profile&action=profile&id=' . $_GET['user_id'] : 'Location:main.php');
?>