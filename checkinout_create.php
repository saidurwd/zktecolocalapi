<?php
date_default_timezone_set("Asia/Dhaka");
require 'dbconn_mysql.php';
$data = $_REQUEST['data'];
$data = json_encode($data);
$json = json_decode($data, true);

// print_r($json);

foreach($json as $val)
{
  $date = new DateTimeImmutable($val[1]);
    $USERID = $val['0'];
    // $CHECKTIME = $val['1'];
    $CHECKTIME = $date->format('Y-m-d H:m');
    $CHECKTYPE = $val['2'];
    $VERIFYCODE = $val['3'];
    $SENSORID = $val['4'];
    $Memoinfo = $val['5'];
    $WorkCode = $val['6'];
    $sn = $val['7'];
    $UserExtFmt = $val['8'];
        
try {
  $sql = "INSERT INTO `checkinout` (`USERID`, `CHECKTIME`, `CHECKTYPE`, `VERIFYCODE`, `SENSORID`, `Memoinfo`, `WorkCode`, `sn`, `UserExtFmt`) VALUES ('$USERID', '$CHECKTIME', '$CHECKTYPE', '$VERIFYCODE', '$SENSORID', '$Memoinfo', '$WorkCode', '$sn', '$UserExtFmt')";
  // use exec() because no results are returned
  $conn->exec($sql);
//   echo "New record created successfully";
    } catch(PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
    }
}


