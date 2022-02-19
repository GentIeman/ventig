<form class="form"
      action="main.php?section=comments&action=save_comment&comment_id={$comment.id}&post_id={$post.id}&user_id={$user.id}"
      method="post">
    <label>
        <input name="comment" class="form__reply reply reply_focus reply_hover" value="{$comment.comment_content}">
    </label>
    <button type="submit" class="form__btn form__icon btn btn_hover btn_focus send"
            title="Редактировать"></button>
</form>