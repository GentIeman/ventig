<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="author" content="Shepelev Ilya">
    <meta name="copyright" content="Shepelev Ilya">
    <title>Users</title>
    <link rel="stylesheet" href="./src/styles/style.css">
    <script defer src="./src/scripts/users.js"></script>
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
                <a href="./profile.php?action=user&id={$current_user.id}"
                   class="header__link header__icon btn btn_hover btn_focus profile-icon"
                   title="Профиль"></a>
            </li>
        </ul>
    </nav>
</header>
<main>
    <section class="users">
        {foreach from=$all_users item=user_edit}
            {if $user_edit.id !== $current_user.id}
                <section class="card">
                    <div class="card__avatar"></div>
                    <ul class="card__list">
                        <li class="card__item">
                            <p class="card__username">Имя пользователя: <span
                                        class="username">{$user_edit.username}</span>
                            </p>
                        </li>
                        <li class="card__item">
                            <p class="card__id">ID пользователя: <u>{$user_edit.id}</u></p>
                        </li>
                        <li class="card__item">
                            <p class="card__status">Статус: {$user_edit.status}</p>
                        </li>
                        <li class="card__item">
                            <p class="card__email">Почта: {$user_edit.email}</p>
                        </li>
                    </ul>
                    <button id="{$user_edit.id}"
                            class="card__edit-btn btn btn_hover btn_focus">Редактировать
                    </button>
                </section>
            {/if}
            {include file="profile_edit.tpl"}
        {/foreach}
    </section>
</main>
</body>
