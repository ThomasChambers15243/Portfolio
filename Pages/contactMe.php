<?php 
$servername = "localhost";
$username = "root";
$password = "pass";
$dbname = "main";

// Create connection
$conn = new mysqli($servername,
    $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: "
        . $conn->connect_error);
}

$sqlquery = 'INSERT INTO ContactMe VALUES
    ($_POST["name"], $_POST["email"], $_POST["message"])';

if ($conn->query($sql) === TRUE) {
    echo "Success";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>.