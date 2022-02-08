{foreach from=$comments item=comment}
    <article class="comment">
        <p class="comment__content">{$comment.comment_content}</p>
        <time class="comment__date-publication">Опубликовано: {$comment.comment_date|date_format:"d.m.Y"}</time>
        <p class="comment__author">Отправлен пользователем: {$comment.comment_author}</p>
        <a href="main.php?action=post&edit_comment={$comment.id}&id={$post.id}"
           class="comment__edit-btn btn btn_hover btn_focus"></a>
    </article>
{/foreach}