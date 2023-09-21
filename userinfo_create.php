<?php
date_default_timezone_set("Asia/Dhaka");
require 'dbconn_mysql.php';
$data = $_REQUEST['data'];
$data = json_encode($data);
$json = json_decode($data, true);

// print_r($json);

foreach($json as $val)
{
    $USERID = $val['0'];
    $Badgenumber = $val['1'];
    $SSN = $val['2'];
    $Name = $val['3'];
    $Gender = $val['4'];      
try {
  $sql = "INSERT INTO `userinfo` (`USERID`, `Badgenumber`, `SSN`, `Name`, `Gender`) VALUES ('$USERID', '$Badgenumber', '$SSN', '$Name', '$Gender')";
  // use exec() because no results are returned
  $conn->exec($sql);
//   echo "New record created successfully";
    } catch(PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
    }
}


