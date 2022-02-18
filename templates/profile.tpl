<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="author" content="Shepelev Ilya">
    <meta name="copyright" content="Shepelev Ilya">
    <title>Profile</title>
    <link rel="stylesheet" href="./src/styles/style.css">
    <script defer src="./src/scripts/profile.js"></script>
</head>
<body>
<header class="header">
    <nav class="header__nav">
        <a class="header__logo" tabindex="-1" href="./main.php"></a>
        <ul class="header__list">
            <li class="header__item">
                <a href="./main.php" class="header__link btn btn_hover btn_focus">Главная</a>
            </li>
            <li class="header__item">
                <a href="./news.php" class="header__link btn btn_hover btn_focus">Новинки</a>
            </li>
            <li class="header__item">
                <a href="./classic.php" class="header__link btn btn_hover btn_focus">Классика</a>
            </li>
            <li class="header__item">
                <a href="./search.php" class="header__link header__icon btn btn_hover btn_focus search-icon"
                   title="Поиск"></a>
            </li>
            <li class="header__item">
                <a href=""
                   class="header__link header__icon btn btn_hover btn_focus profile-icon btn_active"
                   title="Профиль"></a>
            </li>
        </ul>
    </nav>
</header>
<main>
    <section class="profile">
        <div class="profile__avatar">
            <img class="avatar" src="./src/icons/profile.svg" alt="Аватар пользователя" width="50px"
                 height="50px">
        </div>
        <ul class="profile__list">
            <li class="profile__item">
                <p class="profile__username">Имя пользователя: <span class="username"> {$user.username}</span></p>
            </li>
            <li class="profile__item">
                <p class="profile__status">Статус: {$user.status}</p>
            </li>
            <li class="profile__item">
                <p class="profile__email">Почта: {$user.email}</p>
            </li>
        </ul>
        <div class="profile__edit">
            <button class="profile__edit-profile btn btn_hover btn_focus">Редактировать профиль</button>
        </div>
        <div class="profile__logout">
            <a href="./profile.php?action=logout" class="profile__link btn btn_hover btn_focus btn_delete">Выйти</a>
        </div>
    </section>
    {if $posts}
        <section class="user-posts">
            <header class="user-posts__header">
                <h1 class="user-posts__headline">Вашы посты: </h1>
            </header>
            {foreach from=$posts item=post}
                <article class="post">
                    <header class="post__header">
                        <h2 class="post__headline">{$post.post_title}</h2>
                    </header>
                    <p class="post__description">{$post.post_description}</p>
                    {if !empty($post.post_category)}
                        <p class="post__category">Категория: {$post.post_category}</p>
                    {/if}
                    <time class="post__date-published">Дата
                        публикации: {$post.post_date|date_format:"d.m.Y"}
                    </time>
                    <div class="post__comments">Комментариев: {$post.ownCommentsList|@count}</div>
                    <a href="./main.php?action=post&id={$post.id}"
                       class="post__link post__read btn btn_hover btn_focus">Читать
                        статью</a>
                    <button class="post__link edit-post post__edit btn btn_hover btn_focus">Редактировать</button>
                    <a href="./profile.php?action=delete_post&post_id={$post.id}&user_id={$user.id}"
                       class="post__link post__delete btn btn_hover btn_focus btn_delete">Удалить</a>
                </article>
            {/foreach}
        </section>
    {/if}
    <button class="add-post btn btn_hover btn_focus"></button>
    {include file="add_post.tpl"}
    {include file="update_post.tpl"}
    {include file="profile_edit.tpl"}
</main>
</body>
</html>