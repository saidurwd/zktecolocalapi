<?php
    // set local date time zone
    date_default_timezone_set("Asia/Dhaka");
    require 'dbconn_access.php';
    $sql = "SELECT USERID, CHECKTIME, CHECKTYPE, VERIFYCODE, SENSORID, Memoinfo, WorkCode, sn, UserExtFmt FROM CHECKINOUT";
    $result = $db->query($sql);
	
    $response = array();

    while ($row = $result->fetch()) {
        $response[] = $row;
    }
    echo json_encode($response);
