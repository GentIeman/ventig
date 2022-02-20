<section class="post-review">
    <header class="post-review__header">
        <h1 class="post-review__headline">Оставьте свой отзыв</h1>
    </header>
    <form action="./main.php?section=feedbacks&action=send_feedback&user_id={$user.id}" class="post-review__form"
          method="post">
        <label>
            <textarea name="content" cols="80" rows="10" class="post-review__draft draft draft_hover draft_focus"
                      placeholder="Ваш отзыв"></textarea>
        </label>
        <button type="submit" class="post-review__btn btn btn_hover btn_focus">Отправить</button>
    </form>
</section>
<a href="./main.php?section=profile&action=profile&id={$user.id}"
   class="back-btn btn btn_hover btn_focus back-icon icon-big" title="Назад"></a>
{if $isAdmin === true}
    <section class="feedbacks">
        {foreach from=$feedbacks item=feedback}
            <section class="feedback">
                <p class="feedback__content">{$feedback.feedback_content}</p>
                <time class="feedback__date">Дата публикации: {$feedback.feedback_date}</time>
                <p class="feedback__user">От пользователя: {$feedback.user_id}</p>
            </section>
        {/foreach}
    </section>
{/if}