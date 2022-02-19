<?php
$classic_posts = R::find('posts', 'post_category LIKE ?', ["%классика%"]);
$smarty->assign('classic_posts', true);
$smarty->assign('posts', $classic_posts);
$smarty->assign('content', $smarty->fetch('posts.tpl'));
?>