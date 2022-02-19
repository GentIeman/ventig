<?php
$user = R::load('users', $_GET['id']);
$smarty->assign('profile', true);
$smarty->assign('user', $user);
$smarty->assign('posts', $user->ownPostsList);
$smarty->assign('content', $smarty->fetch('profile.tpl'));
?>