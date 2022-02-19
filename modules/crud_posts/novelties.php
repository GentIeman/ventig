<?php
$novelties = R::find('posts', 'post_category LIKE ?', ["%новости%"]);
$smarty->assign('novelties', true);
$smarty->assign('posts', $novelties);
$smarty->assign('content', $smarty->fetch('posts.tpl'));
?>