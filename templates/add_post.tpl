<section class="post-editor">
    <form class="post-editor__form form" action="profile.php?action=add_post&id={$user.id}" method="post">
        <fieldset class="form__wrapp">
            <label>
                <input class="form__reply reply reply_focus reply_hover" type="text" name="title"
                       placeholder="Заголовок поста" required>
            </label>
            <label>
                <textarea class="form__textarea reply reply_focus reply_hover" type="text" name="description"
                          placeholder="Описание поста" required></textarea>
            </label>
            <header class="form__header">
                <h2 class="form__headline">Категория:</h2>
            </header>
            <section class="form__category">
                <label class="form__title">Новости
                    <input class="form__radio reply reply_focus reply_hover" type="radio" name="category"
                           value="Новости" required>
                </label>
                <label class="form__title">Классика
                    <input class="form__radio reply reply_focus reply_hover" type="radio" name="category"
                           value="Классика" required>
                </label>
            </section>
            <button type="submit" class="form__btn btn btn_hover btn_focus">Добавить пост</button>
        </fieldset>
    </form>
</section>