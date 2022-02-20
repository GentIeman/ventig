<form class="comment-editor" action="main.php?section=comments&action=add_comment&id={$post.id}&user_id={$user.id}"
      method="post">
    <label>
        <input name="comment" class="comment-editor__reply reply reply_focus reply_hover"
               placeholder="Добавить комментарий...">
    </label>
    <button type="submit" class="comment-editor__btn btn btn_hover btn_focus icon-small send-icon"
            title="Отправить"></button>
</form>
