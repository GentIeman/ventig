<section class="search">
    <form action="./main.php?section=posts&action=search_posts" class="search__form" method="post">
        <label>
            <input type="search" name="title" class="search__reply reply reply_focus reply_hover"
                   placeholder="Название статьи">
        </label>
        <button type="submit" class="search__btn btn btn_hover btn_focus">Поиск</button>
    </form>
</section>
{if !empty($posts)}
    {include file="posts.tpl" posts=$posts}
{/if}