<?php
$user = R::load('users', $_GET['user_id']);
$user->username = trim($_POST['username']);
$user->status = trim($_POST['status']);
$user->email = trim($_POST['email']);
if ($_POST['password'] !== "") {
    $user->password = trim(password_hash($_POST['password'], PASSWORD_DEFAULT));
}
R::store($user);
if ($_SESSION['user']->status == 'Admin') {
    eventHandler(($_GET['redirect'] === 'profile') ? 'Редактировал свой профиль' : "Редактировал профиль пользователя " . $_POST['username']);
}
header(($_GET['redirect'] === 'profile') ? 'Location:main.php?section=profile&action=profile&id=' . $_GET['user_id'] : 'Location:main.php?section=users');
?>