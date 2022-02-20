<?php
// подключение зависимостей
require("./libs/Smarty.class.php");
$smarty = new Smarty();
require("./modules/db.php");
require('./modules/admin.php');
require('./modules/user.php');

if (isset($_GET['section'])) {
    switch ($_GET['section']) {
        case 'posts':
            require_once('./modules/crud_posts/post_handler.php');
            break;
        case 'comments':
            require_once('./modules/crud_comments/comments_handler.php');
            break;
        case 'profile':
            require_once('./modules/profile/profile_handler.php');
            break;
        case 'users':
            require_once('./modules/users.php');
            break;
        case 'feedbacks':
            require_once('./modules/feedbacks/feedbacks_handler.php');
            break;
    }
} else {
    require('./modules/crud_posts/all_posts.php');
}
// Отрисовка всего содержимого страницы в index.tpl
$smarty->display('index.tpl');