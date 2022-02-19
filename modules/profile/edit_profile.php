<?php
$user = R::load('users', $_GET['user_id']);
$user->username = $_POST['username'];
$user->status = $_POST['status'];
$user->email = $_POST['email'];
$user->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$_SESSION['user']->status = $_POST['status'];
R::store($user);
header('Location:main.php?action=profile&id=' . $_GET['user_id']);
?>