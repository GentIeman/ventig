<?php
$users->username = $_POST['username'];
$users->email = $_POST['email'];
$users->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
$users->status = "Пользователь";
R::store($users);
$user = R::findOne('users', 'email = ?', array($_POST['email']));
$_SESSION['user'] = $user;
header('Location:main.php');
?>