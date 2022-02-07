<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="author" content="Shepeleb Ilya">
    <meta name="copyright" content="Shepelev Ilya">
    <title>Ventag</title>
    <link rel="stylesheet" href="./src/styles/style.css">
    <script src="https://unpkg.com/spacingjs" defer></script>
</head>
<body>
<header class="header">
    <nav class="header__nav">
        <a class="header__logo" tabindex="-1" href=""></a>
        <ul class="header__list">
            <li class="header__item">
                <a href="./main.php" class="header__link btn btn_hover btn_focus">Главная</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link btn btn_hover btn_focus">Новинки</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link btn btn_hover btn_focus">Классика</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link header__icon btn btn_hover btn_focus search-icon" title="Поиск"></a>
            </li>
            <li class="header__item">
                <a href="" class="header__link header__icon btn btn_hover btn_focus profile-icon btn_active"
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
    </section>
    <section class="your-posts">
        <header class="your-posts__header">
            <h1 class="your-posts__headline">Вашы посты: </h1>
        </header>
        <article class="post">
            <header class="post__header">
                <h2 class="post__headline">Тестовый пост</h2>
            </header>
            <p class="post__description">Описание тестового поста</p>
            <p class="post__category">Категория: Новости</p>
            <time class="post__date-published">Дата
                публикации: 22.09.2022
            </time>
            <div class="post__comments">Комментариев: 1</div>
            <a href="" class="post__link btn btn_hover btn_focus">Читать статью</a>
            <a href="" class="post__link btn btn_hover btn_focus btn_delete">Удалить</a>
        </article>
    </section>
</main>
</body>
</html>