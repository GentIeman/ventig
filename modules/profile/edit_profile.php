<?php
$user = R::load('users', $_GET['user_id']);
$user->username = $_POST['username'];
$user->status = $_POST['status'];
$user->email = $_POST['email'];
if ($_POST['password'] !== "") {
    $user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
}
R::store($user);
header(($_GET['redirect'] === 'profile') ? 'Location:main.php?section=profile&action=profile&id=' . $_GET['user_id'] : 'Location:main.php?section=users');
?>