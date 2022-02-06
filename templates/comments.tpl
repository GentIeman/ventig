<section class="comments">
    <form class="form" action="main.php?action=add_comment&id={$post.id}" method="post">
        <label>
            <input name="comment" class="form__reply reply reply_focus reply_hover"
                   placeholder="Добавить комментарий...">
        </label>
        <button type="submit" class="form__btn form__icon btn btn_hover btn_focus send"
                title="Отправить"></button>
    </form>
    {foreach from=$comments item=comment}
        <article class="comment">
            <p class="comment__content">{$comment.comment_content}</p>
            <time class="comment__date-publication">Опубликовано: {$comment.comment_date|date_format:"d.m.Y"}</time>
            <p class="comment__author">Отправлен пользователем: {$comment.comment_author}</p>
        </article>
    {/foreach}
</section>