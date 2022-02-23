<?php
unset($_SESSION['user']);
header("Location:main.php");
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Вышел из системы");
}
?>