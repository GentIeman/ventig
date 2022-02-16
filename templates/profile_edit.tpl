<section class="profile__wrap">
    <form class="profile__form form" action="profile.php?action=save_profile&user_id={$user.id}" method="post">
        <fieldset class="profile__form-wrap">
            <label>
                <input name="username" class="profile__reply reply reply_focus reply_hover"
                       value="{$user.username}" placeholder="Никнейм">
            </label>
            {if $isAdmin === true}
                <label>
                    <input list="status" name="status" class="profile__reply reply reply_focus reply_hover"
                           value="{$user.status}" required placeholder="Статус">
                    <datalist id="status">
                        <option value="Администратор">Администратор</option>
                        <option value="Пользователь">Пользователь</option>
                    </datalist>
                </label>
            {/if}
            <label>
                <input name="password" class="profile__reply reply reply_focus reply_hover"
                       placeholder="Новый пароль">
            </label>
            <label>
                <input name="email" class="profile__reply reply reply_focus reply_hover" value="{$user.email}"
                       placeholder="Почта">
            </label>
            <button type="submit" class="profile__btn form__icon btn btn_hover btn_focus send"
                    title="Редактировать">Редактировать
            </button>
        </fieldset>
    </form>
</section>
