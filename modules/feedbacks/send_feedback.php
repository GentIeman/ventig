<?php
$feedbacks = R::dispense('feedbacks');
$feedbacks->feedback_content = $_POST["content"];
$users = R::load('users', $_GET['user_id']);
$users->ownFeedbacksList[] = $feedbacks;
R::store($users);
header('Location:main.php?section=feedbacks&action=feedbacks&user_id' . $_GET['user_id']);
?>