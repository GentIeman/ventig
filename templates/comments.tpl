<section class="comments">
    {if $is_comment_edit}
        {include file="edit_comm.tpl"}
    {elseif !empty($user)}
        {include file="add_comment.tpl"}
        {include file="comments_list.tpl"}
    {else}
        {include file="comments_list.tpl"}
    {/if}
</section>