<?php
    date_default_timezone_set("Asia/Dhaka");
    require 'dbconn_mysql.php';

    $today = date("Y-m-d");
	//$today = '2023-09-19';

    $sql_data  = "SELECT U.`Badgenumber` AS employee_id, DATE_FORMAT(C.CHECKTIME, '%d-%m-%Y') AS attendance_date, MIN(DATE_FORMAT(C.CHECKTIME, '%H:%i:%s')) AS clock_in, MAX(DATE_FORMAT(C.CHECKTIME, '%H:%i:%s')) AS clock_out, 'Add' AS 'action'
    FROM CHECKINOUT  C
    LEFT JOIN USERINFO U ON U.USERID=C.USERID 
	WHERE DATE_FORMAT(C.`CHECKTIME`, '%Y-%m-%d') = DATE_FORMAT('" . $today . "', '%Y-%m-%d') 
    GROUP BY DATE_FORMAT(C.CHECKTIME, '%Y-%m-%d'), U.`Badgenumber` ORDER BY C.CHECKTIME DESC, U.`Badgenumber` ASC";

    $result = $conn->query($sql_data);
	
    $response = array();

    while ($row = $result->fetch_assoc()) {
        $response[] = $row;
    }
    echo json_encode($response);
