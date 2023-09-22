<?php
date_default_timezone_set("Asia/Dhaka");
require 'dbconn_mysql.php';
require 'dbconn_access.php';
$data = $_REQUEST['data'];
$data = json_encode($data);
$json = json_decode($data, true);

// print_r($json);

foreach ($json as $val) {
  $date = new DateTimeImmutable($val[1]);
  $USERID = $val['0'];
  // $CHECKTIME = $val['1'];
  $CHECKTIME = $date->format('Y-m-d H:m:s');
  $CHECKTYPE = $val['2'];
  $VERIFYCODE = $val['3'];
  $SENSORID = $val['4'];
  $Memoinfo = $val['5'];
  $WorkCode = $val['6'];
  $sn = $val['7'];
  $UserExtFmt = $val['8'];
  //duplicate check
  $result = $conn->query("SELECT USERID FROM  checkinout WHERE USERID=" . $USERID . " AND CHECKTIME='" . $CHECKTIME . "'");
  $total_rows = $result->num_rows;

  if ($total_rows <= 0) {
    try {
      $sql = "INSERT INTO `checkinout` (`USERID`, `CHECKTIME`, `CHECKTYPE`, `VERIFYCODE`, `SENSORID`, `Memoinfo`, `WorkCode`, `sn`, `UserExtFmt`) VALUES ('$USERID', '$CHECKTIME', '$CHECKTYPE', '$VERIFYCODE', '$SENSORID', '$Memoinfo', '$WorkCode', '$sn', '$UserExtFmt')";
      $conn->query($sql);
      //delete data from device
      // $db->query("DELETE FROM CHECKINOUT WHERE USERID = $USERID");
    } catch (PDOException $e) {
      echo $sql . "<br>" . $e->getMessage();
    }
  }
}


