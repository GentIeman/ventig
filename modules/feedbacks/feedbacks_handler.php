<?php
if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'feedbacks':
            require_once('feedbacks.php');
            break;
        case 'send_feedback':
            require_once('send_feedback.php');
            break;
    }
}