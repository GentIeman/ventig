<form class="comment-edit"
      action="main.php?section=comments&action=save_comment&comment_id={$comment.id}&post_id={$post.id}&user_id={$user.id}"
      method="post">
    <label>
        <input name="comment" class="comment-edit__reply reply reply_focus reply_hover"
               value="{$comment.comment_content}">
    </label>
    <button type="submit" class="comment-edit__btn btn btn_hover btn_focus icon-small send-icon"
            title="Редактировать"></button>
</form>