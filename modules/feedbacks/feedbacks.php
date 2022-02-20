<?php
$feedbacks = R::findAll('feedbacks');
foreach ($feedbacks as $feedback) {
    $feedback->feedback_user = R::load('users', $feedback->users_id);
}
$smarty->assign('feedbacks', $feedbacks);
$smarty->assign('content', $smarty->fetch('feedbacks.tpl'));
?>