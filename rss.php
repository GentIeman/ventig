<?php
require "db.php";
$posts = R::dispense('posts');
$posts = R::findAll('posts');
header('Content-Type: text/xml; charset=utf-8');
echo '<?xml version="1.0" encoding="utf-8"?>';
?>

<rss version="2.0">
    <channel>
        <title>ВД50-1-19</title>
        <link>
        https:// /main.php</link>
        <description>Блог - платформа на языке программирования PHP</description>
        <language>Русский</language>
        <webmaster></webmaster>
        <category>Новости</category>
        <docs>https://akvobr.ru/rss.html</docs>
        <copyright>Все права данного канала защищены.</copyright>
        <image>
            <title></title>
            <link></link>
        </image>
        <?php foreach ($posts as $post): ?>
            <item>
                <title><?= $post['post_title'] ?></title>
                <link>
                Ссылка на статью: <![CDATA[https:// /main.php?action=post&id=<?= $post['id'] ?>
                ]]> </link>
                <title><?= $post['post_title'] ?></title>
                <description><?= $post['post_description'] ?></description>
                <pubDate><?= date('r', strtotime($post['post_date'])) ?></pubDate>
                <guid isPermaLink="true">Id записи: <![CDATA[<?= $post['id'] ?>]]></guid>
                <source>
                Ссылка на канал: https:// /main.php </source>
                <author><?= $post['users_id'] ?></author>
                <category><?= $post['post_category'] ?></category>
            </item>
        <?php endforeach; ?>
    </channel>
</rss>