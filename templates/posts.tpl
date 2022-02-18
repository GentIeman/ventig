<section class="posts">
    {foreach from=$all_posts item=post}
        <article class="post">
            <header class="post__header">
                <h2 class="post__headline">{$post.post_title}</h2>
            </header>
            <p class="post__description">{$post.post_description}</p>
            {if !empty($post.post_category)}
                <p class="post__category">Категория: {$post.post_category}</p>
            {/if}
            <time class="post__date-published">Дата
                публикации: {$post.post_date|date_format:"d.m.Y"}</time>
            <div class="post__comments">Комментариев: {$post.ownCommentsList|@count}</div>
            <a href="main.php?action=post&id={$post.id}" class="post__link btn btn_hover btn_focus">Читать
                статью</a>
            {if isset($user) || $user.status == 'Admin'}
                <a href="main.php?action=delete_post&post_id={$post.id}"
                   class="post__delete btn btn_hover btn_focus btn_delete">Удалить</a>
            {/if}
        </article>
    {/foreach}
</section>