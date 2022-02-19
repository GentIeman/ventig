<?php
if (isset($_SESSION['user'])) {
    $smarty->assign('user', $_SESSION['user']);
}
?>