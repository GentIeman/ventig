<?php
$smarty->assign('search', true);
if ($_GET['action'] == 'search_posts') {
    $title = $_POST["title"];
    $posts = R::find('posts', 'post_title LIKE ?', ["%$title%"]);
    $smarty->assign('posts', $posts);
    $smarty->assign('content', $smarty->fetch('search.tpl'));
} else {
    $smarty->assign('content', $smarty->fetch('search.tpl'));
}
?>
