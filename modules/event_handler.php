<?php
function eventHandler($event_type)
{
    $event = R::dispense("eventlog");
    $event->event_type = $event_type;
    $event->user_agent = $_SERVER['HTTP_USER_AGENT'];
    $event->user_ip = $_SERVER['REMOTE_ADDR'];
    $event->username = $_SESSION['user']->username;
    R::store($event);
}
