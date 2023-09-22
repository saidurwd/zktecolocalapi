<?php
//MySql
$servername = "localhost";
$username = "root";
$password = "";
$database = "zktecolocalapi";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 

// try {
//   $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
//   // set the PDO error mode to exception
//   return $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//   // echo "Connected successfully";
// } catch(PDOException $e) {
//   echo "Connection failed: " . $e->getMessage();
// }