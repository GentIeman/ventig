<section class="post-edit" id="modal-window-{$post.id}">
    <form class="post-edit__form form"
          action="main.php?section=posts&action=update_post&post_id={$post.id}&user_id={$user.id}"
          method="post">
        <fieldset class="form__wrap">
            <label>
                <input class="form__title-post reply reply_focus reply_hover" type="text" name="title"
                       placeholder="Заголовок поста" value="{$post.post_title}">
            </label>
            <label>
                <textarea class="form__content-post reply reply_focus reply_hover" type="text" name="description"
                          placeholder="Описание поста">{$post.post_description}</textarea>
            </label>
            <header class="form__header">
                <h2 class="form__headline">Категория:</h2>
            </header>
            <section class="categorys">
                <label class="categorys__title">Новости
                    <input class="categorys__radio radio_hover radio_focus news" type="radio"
                           name="category"
                           value="Новости">
                </label>
                <label class="categorys__title">Классика
                    <input class="categorys__radio classic" type="radio" name="category"
                           value="Классика">
                </label>
            </section>
            <button type="submit" class="post-edit__btn btn btn_hover btn_focus">Редактировать пост</button>
        </fieldset>
    </form>
</section>