<?php
//Access
$db_username = ''; //username
$db_password = ''; //password

//path to database file
$database_path = realpath("att2000.mdb");
//$database_path = realpath("C:/Program Files (x86)/ZKTeco/att2000.mdb");
//check file exist before we proceed
if (!file_exists($database_path)) {
	die("Access database file not found !");
}

try {
	return $db = new PDO("odbc:DRIVER={Microsoft Access Driver (*.mdb, *.accdb)}; DBQ=$database_path; Uid=; Pwd=;");
} catch (PDOException $db) {
	return $db = 'Connection failed: ' . $db->getMessage();
}
