<?php
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'logout':
            require('logout.php');
            break;
        case 'edit_profile':
            require('edit_profile.php');
            break;
        case 'auth':
            require('auth.php');
            break;
        case 'singup':
            require('singup.php');
            break;
        case 'singin':
            require('singin.php');
            break;
        case 'profile':
            require('profile.php');
            break;
    }
}