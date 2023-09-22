<?php
date_default_timezone_set("Asia/Dhaka");
require 'dbconn_mysql.php';

$data = $_REQUEST['data'];
$data = json_encode($data);
$json = json_decode($data, true);

foreach($json as $val)
{
  $USERID = $val['0'];
  $Badgenumber = $val['1'];
  $SSN = $val['2'];
  $Name = $val['3'];
  $Gender = $val['4'];
  //duplicate check
  $result_data = $conn->query("SELECT USERID FROM userinfo WHERE Badgenumber='".$val['1']."' AND SSN='".$val['2']."'");
  $total_count = $result_data->num_rows;

  if($total_count<=0){
      try {
      $sql = "INSERT INTO `userinfo` (`USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`) VALUES ('$USERID', '$Badgenumber', '$SSN', '$Name', '$Gender')";
      print "INSERT INTO `userinfo` (`USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`) VALUES ('$USERID', '$Badgenumber', '$SSN', '$Name', '$Gender')";
        $conn->query($sql);
      } catch(PDOException $e) {
      echo $sql . "<br>" . $e->getMessage();
      }
  }
  
}


