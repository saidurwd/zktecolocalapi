<?php
    // set local date time zone
    date_default_timezone_set("Asia/Dhaka");
    require 'dbconn_access.php';
    $sql = "SELECT `USERID`, `Badgenumber`, `SSN`, `Name`, `Gender` FROM userinfo";
    $result = $db->query($sql);
	
    $response = array();

    while ($row = $result->fetch()) {
        $response[] = $row;
    }
    echo json_encode($response);
