<section class="comments">
    {if $is_comment_edit}
        {include file="edit_comm.tpl"}
    {else}
        {include file="add_comment.tpl"}
        {include file="comments_list.tpl"}
    {/if}
</section>