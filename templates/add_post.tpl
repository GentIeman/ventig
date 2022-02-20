<section class="post-editor">
    <form class="post-editor__form" action="main.php?section=posts&action=add_post&id={$user.id}" method="post">
        <label>
            <input class="post-editor__reply reply reply_focus reply_hover" type="text" name="title"
                   placeholder="Заголовок поста" required>
        </label>
        <label>
                <textarea class="post-editor__draft draft draft_focus draft_hover" type="text" name="description"
                          placeholder="Описание поста" required></textarea>
        </label>
        <header class="post-editor__header">
            <h2 class="post-editor__headline">Категория:</h2>
        </header>
        <section class="categorys">
            <label class="categorys__title">Новости
                <input class="categorys__radio radio_hover radio_focus news" type="radio"
                       name="category"
                       value="Новости" required>
            </label>
            <label class="categorys__title">Классика
                <input class="categorys__radio radio_hover radio_focus classic" type="radio" name="category"
                       value="Классика" required>
            </label>
        </section>
        <button type="submit" class="post-editor__btn btn btn_hover btn_focus">Добавить пост</button>
    </form>
</section>