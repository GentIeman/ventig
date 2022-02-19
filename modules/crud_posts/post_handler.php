<?php
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'post':
            require_once('post.php');
            break;
        case 'delete_post':
            require_once('delete_post.php');
            break;
        case 'classic_posts':
            require_once('classic.php');
            break;
        case 'novelties':
            require_once('novelties.php');
            break;
        case 'search':
        case 'search_posts':
            require_once('search.php');
            break;
        case 'add_post':
            require_once('add_post.php');
            break;
        case 'update_post':
            require_once('update_post.php');
            break;
    }
}