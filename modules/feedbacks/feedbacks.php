<?php
$feedbacks = R::findAll('feedbacks');
$smarty->assign('feedbacks', $feedbacks);
$smarty->assign('content', $smarty->fetch('feedbacks.tpl'));
?>