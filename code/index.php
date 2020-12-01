<?php

$mysqli_connection = new MySQLi('mariaDB', 'root', '654321', 'mysql');
if ($mysqli_connection->connect_error) {
   echo "Not connected, error: " . $mysqli_connection->connect_error;
}
else {
   echo "Connected.";
}

echo phpinfo();

?>
