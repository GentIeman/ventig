<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta name="author" content="Shepelev Ilya">
    <meta name="copyright" content="Shepelev Ilya">
    <title>Auth</title>
    <link rel="stylesheet" href="./src/styles/style.css">
    <script defer src="./src/scripts/auth.js"></script>
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
                <a href="./search.php" ы
                   class="header__link header__icon btn btn_hover btn_focus search-icon"
                   title="Поиск"></a>
            </li>
            {if !empty($user)}
                <li class="header__item">
                    <a href="./profile.php?action=user&id={$user.id}"
                       class="header__link header__icon btn btn_hover btn_focus profile-icon btn_active"
                       title="Профиль"></a>
                </li>
            {else}
                <li class="header__item">
                    <a href=""
                       class="header__link header__icon btn btn_hover btn_focus profile-icon"
                       title="Профиль"></a>
                </li>
            {/if}
        </ul>
    </nav>
</header>
<main>
    {if isset($isPassword) != false}
        {include file="hint.tpl" title="Вы ввели неверный пароль"}
    {/if}
    {if isset($isUser) != false}
        {include file="hint.tpl" title="Пользователь ненайден"}
    {/if}
    <section class="auth">
        <section class="singin">
            <header class="singin__header">
                <h1 class="singin__headline">Войти</h1>
            </header>
            <form action="auth.php?action=singin" method="post" class="singin__form form">
                <label for="">
                    <input type="text" class="singin__input login reply reply_focus reply_hover" placeholder="Почта"
                           name="email" required>
                </label>
                <label for="">
                    <input type="password" class="singin__input password reply reply_focus reply_hover"
                           placeholder="Пароль"
                           name="password" required>
                </label>
                <button type="submit" class="singin__btn btn btn_hover btn_focus">Войти</button>
                <a class="singin__btn singin__btn_small btn_slide btn btn_hover btn_focus">Зарегистрироваться</a>
            </form>
        </section>
        <section class="singup">
            <header class="singup__header">
                <h1 class="singup__headline">Регистрация</h1>
            </header>
            <form action="auth.php?action=singup" method="post" class="singup__form form">
                <label for="">
                    <input type="text" class="singup__input login reply reply_focus reply_hover" placeholder="Логин"
                           name="username" required>
                </label>
                <label for="">
                    <input type="email" class="singup__input email reply reply_focus reply_hover" placeholder="Почта"
                           name="email" required>
                </label>
                <label for="">
                    <input type="password" class="singup__input password reply reply_focus reply_hover"
                           placeholder="Пароль"
                           name="password" required>
                </label>
                <button type="submit" class="singup__btn btn btn_hover btn_focus">Зарегистироваться</button>
                <a class="singup__btn singup__btn_small btn btn_slide btn_hover btn_focus">Войти</a>
            </form>
        </section>
        <section class="partition">
            <div class="partition__circle"></div>
            <div class="partition__circle"></div>
        </section>
    </section>
</main>
</body>
</html>