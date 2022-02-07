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
                <a href="" class="header__link header__icon btn btn_hover btn_focus search-icon" title="Поиск"></a>
            </li>
            <li class="header__item">
                <a href="./profile.php?action=user&id=4"
                   class="header__link header__icon btn btn_hover btn_focus profile-icon"
                   title="Профиль"></a>
            </li>
        </ul>
    </nav>
</header>
<main>
    {$posts}
</main>
</body>
</html>