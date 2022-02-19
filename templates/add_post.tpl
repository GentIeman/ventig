<section class="post-editor">
    <form class="post-editor__form form" action="main.php?section=posts&action=add_post&id={$user.id}" method="post">
        <fieldset class="form__wrap">
            <label>
                <input class="form__title-post reply reply_focus reply_hover" type="text" name="title"
                       placeholder="Заголовок поста" required>
            </label>
            <label>
                <textarea class="form__content-post reply reply_focus reply_hover" type="text" name="description"
                          placeholder="Описание поста" required></textarea>
            </label>
            <header class="form__header">
                <h2 class="form__headline">Категория:</h2>
            </header>
            <section class="categorys">
                <label class="categorys__title">Новости
                    <input class="categorys__radio radio_hover radio_focus news" type="radio"
                           name="category"
                           value="Новости" required>
                </label>
                <label class="categorys__title">Классика
                    <input class="categorys__radio classic" type="radio" name="category"
                           value="Классика" required>
                </label>
            </section>
            <button type="submit" class="form__btn btn btn_hover btn_focus">Добавить пост</button>
        </fieldset>
    </form>
</section>