<article class="post">
    <header class="post__header">
        <h2 class="post__headline">{$post.post_title}</h2>
    </header>
    <p class="post__description">{$post.post_description}</p>
    <p class="post__category">Категория: {$post.post_category}</p>
    <time class="post__date-published">Дата
        публикации: {$post.post_date|date_format:"d.m.Y"}</time>
    <div class="post__comments">Комментариев: 1</div>
    <a href="" class="post__link btn btn_hover btn_focus">Читать статью</a>
</article>
<a href="main.php" class="back-btn btn btn_hover btn_focus"></a>