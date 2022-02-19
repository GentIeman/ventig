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
        <form action="main.php?section=profile&action=singin" method="post" class="singin__form form">
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
        <form action="main.php?section=profile&action=singup" method="post" class="singup__form form">
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