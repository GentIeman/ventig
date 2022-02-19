<?php
if (isset($_SESSION['user']) && $_SESSION['user']->status === 'Admin') {
    $smarty->assign('isAdmin', true);
} else {
    $smarty->assign('isAdmin', false);
}
?>