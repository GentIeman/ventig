<?php
require("./libs/Smarty.class.php");
require("db.php");
$users = R::dispense('users');
$smarty = new Smarty();

$users = R::findAll('users');
$smarty->assign('all_users', $users);
$smarty->assign('isAdmin', true);
if (isset($_SESSION['user'])) {
    $smarty->assign('current_user', $_SESSION['user']);
}
$currentUser = R::load('users', $_SESSION['user']->id);
$smarty->assign('users', $smarty->fetch('users.tpl'));
$smarty->assign('currentUser', $currentUser);


if (isset($_GET['action'])) {
    if ($_GET['action'] == 'save_profile') {
        $user = R::load('users', $_GET['user_id']);
        $user->username = $_POST['username'];
        $user->status = $_POST['status'];
        $user->email = $_POST['email'];
        $user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
        R::store($user);
        header('Location:users.php');
    }
}

$smarty->display('users.tpl');