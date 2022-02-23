<?php
$feedbacks = R::dispense('feedbacks');
$feedbacks->feedback_content = $_POST["content"];
$users = R::load('users', $_GET['user_id']);
$users->ownFeedbacksList[] = $feedbacks;
if ($_SESSION['user']->status == 'Admin') {
    eventHandler("Добавление отзыва");
}
R::store($users);
header('Location:main.php?section=feedbacks&action=feedbacks&user_id' . $_GET['user_id']);
?>