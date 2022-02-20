<section class="profile">
    <div class="profile__avatar">
        <img class="avatar" src="./src/icons/profile.svg" alt="Аватар пользователя" width="50px"
             height="50px">
    </div>
    <ul class="profile__list">
        <li class="profile__item">
            <p class="profile__username">Имя пользователя: <span class="username"> {$user.username}</span></p>
        </li>
        <li class="profile__item">
            <p class="profile__status">Статус: {$user.status}</p>
        </li>
        <li class="profile__item">
            <p class="profile__email">Почта: {$user.email}</p>
        </li>
    </ul>
    <div class="profile__edit">
        <button class="profile__edit-btn btn btn_hover btn_focus">Редактировать профиль</button>
    </div>
    <div class="profile__logout">
        <a href="./main.php?section=profile&action=logout" class="profile__link btn btn_hover btn_focus btn_delete">Выйти</a>
    </div>
</section>
{if $posts}
    <section class="user-posts">
        <header class="user-posts__header">
            <h1 class="user-posts__headline">Вашы посты: </h1>
        </header>
        {foreach from=$posts item=post}
            <article class="post">
                <header class="post__header">
                    <h2 class="post__headline">{$post.post_title}</h2>
                </header>
                <p class="post__description">{$post.post_description}</p>
                {if !empty($post.post_category)}
                    <p class="post__category">Категория: {$post.post_category}</p>
                {/if}
                <time class="post__date-published">Дата
                    публикации: {$post.post_date|date_format:"d.m.Y"}
                </time>
                <div class="post__comments">Комментариев: {$post.ownCommentsList|@count}</div>
                <a href="./main.php?section=posts&action=post&id={$post.id}"
                   class="post__link post__read btn btn_hover btn_focus">Читать
                    статью</a>
                <button id="{$post.id}" class="post__link edit-post post__edit btn btn_hover btn_focus">
                    Редактировать
                </button>
                <a href="./main.php?section=posts&action=delete_post&post_id={$post.id}&user_id={$user.id}&location=profile"
                   class="post__link post__delete btn btn_hover btn_focus btn_delete">Удалить</a>
            </article>
            {include file="update_post.tpl"}
        {/foreach}
    </section>
{/if}
<section class="toolbar toolbar_right">
    <button class="toolbar__btn btn btn_hover btn_focus icon plus-icon" title="Добавить пост"></button>
    {if $isAdmin == true}
        <a href="./main.php?section=users" class="toolbar__link btn btn_focus btn_hover icon users-icon"
           title="Все пользователи"></a>
    {/if}
    <a href="./main.php?section=feedbacks&action=feedbacks&user_id={$user.id}"
       class="toolbar__link btn btn_focus btn_hover icon form-icon"
       title="Оставить отзыв"></a>
</section>
{include file="add_post.tpl"}
{include file="profile_edit.tpl"}