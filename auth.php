<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
require("db.php");
$users = R::dispense('users');
$smarty = new Smarty();


if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'singup':
            $users->username = $_POST['username'];
            $users->email = $_POST['email'];
            $users->password = password_hash($_POST['password'], PASSWORD_DEFAULT);
            $users->status = "Пользователь";
            R::store($users);
            $user = R::findOne('users', 'email = ?', array($_POST['email']));
            $_SESSION['user'] = $user;
            header('Location:main.php');
        case 'singin':
            $user = R::findOne('users', 'email = ?', array($_POST['email']));
            if ($user) {
                if (password_verify($_POST['password'], $user->password)) {
                    $_SESSION['user'] = $user;
                }
            }
            header('Location:main.php');
    }
}


$smarty->display('auth.tpl');


