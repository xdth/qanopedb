<?php

// Include config
require_once('core/config.php');

// Redirect
$url = CFG['instance-domain'];
header("Location: $url/channels");

// Exit
exit;

?>
