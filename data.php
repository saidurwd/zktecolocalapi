<!DOCTYPE html>
<html>

<head>
    <title>Attendance DATA Export!</title>
    <!--    <meta http-equiv="refresh" content="3600">-->
</head>

<body>
    <h2 style="text-align:center;margin-top:100px;">Attendance DATA Export!</h2>
    <form action="" method="POST">
        <label for="fname">Date (YYYY-MM-DD): </label>
        <input type="text" id="today" name="today" value="">
        <input type="submit" value="Submit">
    </form>
    <?php
    set_time_limit(0);
    date_default_timezone_set("Asia/Dhaka");
    require 'dbconn_mysql.php';
    require 'dbconn_access.php';
    require 'dbconnection.php';

    if (empty($_REQUEST['today'])) {
        $today = date("Y-m-d");
        //$today = '2023-10-16';
    } else {
        $today = $_REQUEST['today'];
    }

    $sql_access = "SELECT USERID, CHECKTIME, CHECKTYPE, VERIFYCODE, SENSORID, Memoinfo, WorkCode, sn, UserExtFmt FROM CHECKINOUT WHERE FORMAT(CHECKTIME,'yyyyMMdd') = FORMAT('" . $today . "', 'yyyyMMdd')";
    $result_access = $db->query($sql_access);
    while ($val = $result_access->fetch()) {
        $date = new DateTimeImmutable($val['CHECKTIME']);
        $USERID = $val['USERID'];
        $CHECKTIME = $date->format('Y-m-d H:i:s');
        $CHECKTYPE = $val['CHECKTYPE'];
        $VERIFYCODE = $val['VERIFYCODE'];
        $SENSORID = $val['SENSORID'];
        $Memoinfo = $val['Memoinfo'];
        $WorkCode = $val['WorkCode'];
        $sn = $val['sn'];
        $UserExtFmt = $val['UserExtFmt'];

        //duplicate check
        $result = $conn->query("SELECT USERID FROM  checkinout WHERE USERID=" . $USERID . " AND CHECKTIME='" . $CHECKTIME . "'");
        $total_rows = $result->num_rows;

        if ($total_rows <= 0) {
            try {
                //Store data locally
                $sql = "INSERT INTO `checkinout` (`USERID`, `CHECKTIME`, `CHECKTYPE`, `VERIFYCODE`, `SENSORID`, `Memoinfo`, `WorkCode`, `sn`, `UserExtFmt`) VALUES ('$USERID', '$CHECKTIME', '$CHECKTYPE', '$VERIFYCODE', '$SENSORID', '$Memoinfo', '$WorkCode', '$sn', '$UserExtFmt')";
                $conn->query($sql);
                //delete data from device
                //$db->query("DELETE FROM CHECKINOUT WHERE USERID = $USERID");
            } catch (PDOException $e) {
                echo $sql . "<br>" . $e->getMessage();
            }
        }
    }

    //Store data live
    $sqlLocal = "SELECT * FROM checkinout WHERE DATE_FORMAT(CHECKTIME, '%Y-%m-%d') = DATE_FORMAT('" . $today . "', '%Y-%m-%d')";
    $resultLocal = $conn->query($sqlLocal);
    while ($rowLive = $resultLocal->fetch_assoc()) {
        $dateL = new DateTimeImmutable($rowLive['CHECKTIME']);
        $USERIDL = $rowLive['USERID'];
        $CHECKTIMEL = $dateL->format('Y-m-d H:i:s');
        //duplicate check live
        $resultDuplicate = $connection->query("SELECT USERID FROM  checkinout WHERE USERID=" . $USERIDL . " AND CHECKTIME='" . $CHECKTIMEL . "'");
        $total_rows_live = $resultDuplicate->num_rows;
        if ($total_rows_live <= 0) {
            $sqlLive = "INSERT INTO `checkinout` (`USERID`, `CHECKTIME`, `CHECKTYPE`, `VERIFYCODE`, `SENSORID`, `Memoinfo`, `WorkCode`, `sn`, `UserExtFmt`) VALUES ('" . $rowLive['USERID'] . "', '" . $rowLive['CHECKTIME'] . "', '" . $rowLive['CHECKTYPE'] . "', '" . $rowLive['VERIFYCODE'] . "', '" . $rowLive['SENSORID'] . "', '" . $rowLive['Memoinfo'] . "', '" . $rowLive['WorkCode'] . "', '" . $rowLive['sn'] . "', '" . $rowLive['UserExtFmt'] . "')";
            $connection->query($sqlLive);
            //update local
            $sqlUpdate = "UPDATE `checkinout` SET `status`='Exported' WHERE id= '" . $rowLive['id'] . "'";
            $conn->query($sqlUpdate);
        }
    }
    ?>
</body>

</html>