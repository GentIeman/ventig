<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="author" content="Shepeleb Ilya">
    <meta name="copyright" content="Shepelev Ilya">
    <title>Новинки</title>
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
                <a href="./news.php" class="header__link btn btn_hover btn_focus btn_active">Новинки</a>
            </li>
            <li class="header__item">
                <a href="./classic.php" class="header__link btn btn_hover btn_focus">Классика</a>
            </li>
            <li class="header__item">
                <a href="./search.php"
                   class="header__link header__icon btn btn_hover btn_focus search-icon"
                   title="Поиск"></a>
            </li>
            {if !empty($user)}
                <li class="header__item">
                    <a href="./profile.php?action=user&id={$user.id}"
                       class="header__link header__icon btn btn_hover btn_focus profile-icon"
                       title="Профиль"></a>
                </li>
            {else}
                <li class="header__item">
                    <a href="./auth.php"
                       class="header__link header__icon btn btn_hover btn_focus profile-icon"
                       title="Профиль"></a>
                </li>
            {/if}
        </ul>
    </nav>
</header>
<main>
    {$posts}
</main>
</body>
</html>