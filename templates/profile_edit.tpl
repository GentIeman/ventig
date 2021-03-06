{if !isset($user_edit)}
    {assign var="user_edit" value=$user}
{/if}

{assign var="redirect" value="profile"}
{if $smarty.get.section == "users"}
    {assign var="redirect" value="users"}
{/if}
<section class="profile-edit" id="modal-window-{$user_edit.id}">
    <form class="profile-edit__form"
          action="./main.php?section=profile&action=edit_profile&user_id={$user_edit.id}&redirect={$redirect}"
          method="post">
        <label>
            <input name="username" class="profile-edit__reply reply reply_focus reply_hover"
                   value="{$user_edit.username}" placeholder="Никнейм">
        </label>
        {if $isAdmin === true}
            <label>
                <input list="status" name="status" class="profile-edit__reply reply reply_focus reply_hover"
                       value="{$user_edit.status}" required placeholder="Статус">
                <datalist id="status">
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                </datalist>
            </label>
        {/if}
        <label>
            <input name="password" class="profile-edit__reply reply reply_focus reply_hover"
                   placeholder="Новый пароль">
        </label>
        <label>
            <input name="email" class="profile-edit__reply reply reply_focus reply_hover" value="{$user_edit.email}"
                   placeholder="Почта">
        </label>
        <button type="submit" class="profile-edit__btn profile-edit__icon btn btn_hover btn_focus send"
                title="Редактировать">Редактировать
        </button>
    </form>
</section>
