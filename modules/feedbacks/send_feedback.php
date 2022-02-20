<?php
$feedbacks->feedback_content = $_POST["content"];
$feedbacks->user_id = $_GET["user_id"];
R::store($feedbacks);
header('Location:main.php?section=feedbacks&action=feedbacks&user_id' . $_GET['user_id']);
?>