<?php
$posts = R::findAll('posts');
$smarty->assign('posts', $posts);
$smarty->assign('content', $smarty->fetch('posts.tpl'));
?>
