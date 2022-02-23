<?php
$user = R::findOne('users', 'email = ?', array($_POST['email']));
if ($user) {
    if (password_verify($_POST['password'], $user->password)) {
        $_SESSION['user'] = $user;
        header('Location:main.php');
    } else {
        $smarty->assign('isPassword', false);
    }
} else {
    $smarty->assign('isUser', false);
}
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Вошел в систему");
}
?>