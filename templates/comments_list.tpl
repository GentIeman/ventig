{foreach from=$comments item=comment}
    <article class="comment">
        <p class="comment__content">{$comment.comment_content}</p>
        <time class="comment__date-publication">Опубликовано: {$comment.comment_date|date_format:"d.m.Y"}</time>
        {if !empty($user)}
            <section class="toolbar toolbar_absolute">
                {if $user.id == $comment.users_id}
                    <a href="main.php?section=posts&action=post&edit_comment={$comment.id}&id={$post.id}"
                       class="comment__btn btn btn_hover btn_focus icon-small edit-icon"
                       title="Редактировать комментарий"></a>
                {/if}
                {if $user.id == $comment.users_id || $isAdmin == true}
                    <a href="main.php?section=comments&action=delete_comment&comment_id={$comment.id}&post_id={$post.id}"
                       class="comment__btn btn btn_hover btn_focus icon-small cross-icon"
                       title="Удалить комментарий"></a>
                {/if}
            </section>
        {/if}
    </article>
{/foreach}