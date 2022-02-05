<!doctype html>
<html lang="en">
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
                <a href="" class="header__link btn btn_hover btn_focus btn_active">Главная</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link btn btn_hover btn_focus">Новинки</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link btn btn_hover btn_focus">Классика</a>
            </li>
            <li class="header__item">
                <a href="" class="header__link header__icon btn btn_hover btn_focus search"></a>
            </li>
            <li class="header__item">
                <a href="" class="header__link header__icon btn btn_hover btn_focus profile"></a>
            </li>
        </ul>
    </nav>
</header>
<main>
    <section class="posts">
        {foreach from=$all_posts item=post}
            <article class="post">
                <header class="post__header">
                    <h2 class="post__headline">{$post.post_title}</h2>
                </header>
                <p class="post__description">{$post.post_description}</p>
                <p class="post__category">Категория: {$post.post_category}</p>
                <time class="post__date-published">Дата
                    публикации: {$post.post_date|date_format:"d.m.Y"}</time>
                <div class="post__comments">Комментариев: 1</div>
                <a href="" class="post__link btn btn_hover btn_focus">Читать статью</a>
            </article>
        {/foreach}
    </section>
</main>
</body>
</html>