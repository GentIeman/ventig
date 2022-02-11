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
                <a href="./search.php" class="header__link header__icon btn btn_hover btn_focus search-icon btn_active"
                   title="Поиск"></a>
            </li>
            <li class="header__item">
                <a href="./profile.php?action=user&id={$user}"
                   class="header__link header__icon btn btn_hover btn_focus profile-icon"
                   title="Профиль"></a>
            </li>
        </ul>
    </nav>
</header>
<main>
    <section class="search">
        <form action="search.php?action=search" class="search__form" method="post">
            <label>
                <input type="search" name="title" class="search__input reply reply_focus reply_hover"
                       placeholder="Поиск...">
            </label>
            <button type="submit" class="search__btn btn btn_hover btn_focus"></button>
        </form>
    </section>
    {if !empty($posts)}
        {foreach from=$posts item=post}
            <article class="post">
                <header class="post__header">
                    <h2 class="post__headline">{$post.post_title}</h2>
                </header>
                <p class="post__description">{$post.post_description}</p>
                <p class="post__category">Категория: {$post.post_category}</p>
                <time class="post__date-published">Дата
                    публикации: {$post.post_date|date_format:"d.m.Y"}</time>
                <div class="post__comments">Комментариев: {$post.ownCommentsList|@count}</div>
                <a href="main.php?action=post&id={$post.id}" class="post__link btn btn_hover btn_focus">Читать
                    статью</a>
            </article>
        {/foreach}
    {/if}
</main>
</body>
</html>