<?php

/*
* Init file
*/

// Include config
require_once('core/config.php');

// Include classes
require_once('core/main.class.php');
require_once('core/user.class.php');
require_once('core/channel.class.php');

// Instantiate classes
// $main = new Main();
$user = new User();
$channel = new Channel();
