<?php
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'logout':
            require_once('logout.php');
            break;
        case 'edit_profile':
            require_once('edit_profile.php');
            break;
        case 'auth':
            require_once('auth.php');
            break;
        case 'singup':
            require_once('singup.php');
            break;
        case 'singin':
            require_once('singin.php');
            break;
        case 'profile':
            require_once('profile.php');
            break;
    }
}