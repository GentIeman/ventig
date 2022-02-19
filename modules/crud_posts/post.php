<?php
$post = R::load('posts', $_GET['id']);
$smarty->assign('post', $post);
$smarty->assign('comments', $post->ownCommentsList);
$smarty->assign('is_comment_edit', isset($_GET['edit_comment']));
if (isset($_GET['edit_comment'])) {
    $smarty->assign('comment', R::load('comments', $_GET['edit_comment']));
}
$smarty->assign('content', $smarty->fetch('post.tpl'));
?>