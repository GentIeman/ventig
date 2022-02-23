<?php
$users = R::dispense('users');
$users->username = trim($_POST['username']);
$users->email = trim($_POST['email']);
$users->password = trim(password_hash($_POST['password'], PASSWORD_DEFAULT));
$users->status = "Пользователь";
R::store($users);
$user = R::findOne('users', 'email = ?', array($_POST['email']));
$_SESSION['user'] = $user;
header('Location:main.php');
?>