<section class="search">
    <form action="./main.php?action=search_posts" class="search__form" method="post">
        <label>
            <input type="search" name="title" class="search__input reply reply_focus reply_hover"
                   placeholder="Поиск...">
        </label>
        <button type="submit" class="search__btn btn btn_hover btn_focus"></button>
    </form>
</section>
{if !empty($posts)}
    {include file="posts.tpl" posts=$posts}
{/if}