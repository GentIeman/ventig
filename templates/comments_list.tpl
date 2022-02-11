{foreach from=$comments item=comment}
    <article class="comment">
        <p class="comment__content">{$comment.comment_content}</p>
        <time class="comment__date-publication">Опубликовано: {$comment.comment_date|date_format:"d.m.Y"}</time>
        <a href="main.php?action=post&edit_comment={$comment.id}&id={$post.id}"
           class="comment__btn edit-btn btn btn_hover btn_focus"></a>
        <a href="main.php?action=delete_comment&comment_id={$comment.id}&post_id={$post.id}"
           class="comment__btn delete-btn btn btn_hover btn_focus"></a>
    </article>
{/foreach}