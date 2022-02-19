<?php
$user = R::load('users', $_GET['id']);
$smarty->assign('profile', true);
$smarty->assign('user', $user);
if ($_SESSION['user']->status === 'Admin') {
    $smarty->assign('isAdmin', true);
} else {
    $smarty->assign('isAdmin', false);
}
$smarty->assign('posts', $user->ownPostsList);
$smarty->assign('content', $smarty->fetch('profile.tpl'));
?>