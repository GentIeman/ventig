<?php
$users = R::findAll('users');
$smarty->assign('all_users', $users);
$smarty->assign('isAdmin', true);
if (isset($_SESSION['user'])) {
    $smarty->assign('current_user', $_SESSION['user']);
}
$currentUser = R::load('users', $_SESSION['user']->id);
$smarty->assign('currentUser', $currentUser);
$smarty->assign('content', $smarty->fetch('users.tpl'));

?>
