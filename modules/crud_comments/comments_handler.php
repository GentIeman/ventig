<?php
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'add_comment':
            require_once('add_comment.php');
            break;
        case 'save_comment':
            require_once('edit_comment.php');
            break;
        case 'delete_comment':
            require_once('delete_comment.php');
            break;
    }
}