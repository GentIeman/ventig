<section class="users">
    {foreach from=$all_users item=user_edit}
        {if $user_edit.id !== $current_user.id}
            <section class="card">
                <div class="card__avatar"></div>
                <ul class="card__list">
                    <li class="card__item">
                        <p class="card__username">Имя пользователя: <span
                                    class="username">{$user_edit.username}</span>
                        </p>
                    </li>
                    <li class="card__item">
                        <p class="card__id">ID пользователя: <u>{$user_edit.id}</u></p>
                    </li>
                    <li class="card__item">
                        <p class="card__status">Статус: {$user_edit.status}</p>
                    </li>
                    <li class="card__item">
                        <p class="card__email">Почта: {$user_edit.email}</p>
                    </li>
                </ul>
                <button id="{$user_edit.id}"
                        class="card__edit-btn btn btn_hover btn_focus">Редактировать
                </button>
            </section>
        {/if}
        {include file="profile_edit.tpl"}
    {/foreach}
</section>
<a href="./main.php?section=profile&action=profile&id={$user.id}"
   class="back-btn btn btn_hover btn_focus back-icon icon-big"
   title="Назад"></a>