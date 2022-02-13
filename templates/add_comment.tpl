<form class="form" action="main.php?action=add_comment&id={$post.id}&user_id={$user.id}" method="post">
    <label>
        <input name="comment" class="form__reply reply reply_focus reply_hover"
               placeholder="Добавить комментарий...">
    </label>
    <button type="submit" class="form__btn form__icon btn btn_hover btn_focus send"
            title="Отправить"></button>
</form>
