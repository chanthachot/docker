<?php

$mysqli_connection = new MySQLi('mariaDB', 'root', 'slaughter2541', 'mysql');
if ($mysqli_connection->connect_error) {
   echo "Not connected, error: " . $mysqli_connection->connect_error;
}
else {
    header('Location: birdexploring-backend/index.php');
    exit();
}

?>
