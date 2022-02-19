<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
$smarty = new Smarty();
require("./modules/db.php");
require('./modules/admin.php');
require('./modules/user.php');

// глобальные переменный для взаимодейсвия с бд
$comments = R::dispense('comments');
$posts = R::dispense('posts');
$users = R::dispense('users');
$feedbacks = R::dispense('feedbacks');
$eventlog = R::dispense('eventlog');

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'post':
            require('./modules/crud_posts/post.php');
            break;
        case 'add_comment':
            require('./modules/crud_comments/add_comment.php');
            break;
        case 'save_comment':
            require('./modules/crud_comments/edit_comment.php');
            break;
        case 'delete_comment':
            require('./modules/crud_comments/delete_comment.php');
            break;
        case 'delete_post':
            require('./modules/crud_posts/delete_post.php');
            break;
        case 'classic_posts':
            require('./modules/crud_posts/classic.php');
            break;
        case 'novelties':
            require('./modules/crud_posts/novelties.php');
            break;
        case 'search':
        case 'search_posts':
            require('./modules/crud_posts/search.php');
            break;
        case 'profile':
            require('./modules/profile/profile.php');
            break;
        case 'add_post':
            require('./modules/crud_posts/add_post.php');
            break;
        case 'logout':
            require('./modules/profile/logout.php');
            break;
        case 'update_post':
            require('./modules/crud_posts/update_post.php');
            break;
        case 'edit_profile':
            require('./modules/profile/edit_profile.php');
            break;
        case 'auth':
            require('./modules/profile/auth.php');
            break;
        case 'singup':
            require('./modules/profile/singup.php');
            break;
        case 'singin':
            require('./modules/profile/singin.php');
            break;
        case 'users':
            require('./modules/users.php');
            break;
    }
} else {
    require('./modules/crud_posts/all_posts.php');
}
// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');