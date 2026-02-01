<?php
// Configuration variables
$dbname = 'production_db';
$dbuser = 'db_service_user';
$dbpass = 'PASSWORD123!'; 
$dbhost = 'DATABASE_SERVER_IP'; 

// Attempt to connect
$connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

// Check connection
if (!$connection) {
    header("HTTP/1.1 500 Internal Server Error");
    echo "Database Connection Failed: " . mysqli_connect_error();
    exit;
}

echo "Database Connection Successful. App Tier is healthy.";
mysqli_close($connection);
?>