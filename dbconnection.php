<?php
//MySql
$servername = "192.185.196.184";
$username = "saidurra_attendance";
$password = "AewI*_ofjc)E=Akar6";
$database = "saidurra_optimohrm";

$connection = new mysqli($servername, $username, $password, $database);
// Check connection
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
} 
