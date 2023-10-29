<!DOCTYPE html>
<html>

<head>
    <title>Attendance data upload</title>
    <meta http-equiv="refresh" content="3600">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <?php
    if (empty($_REQUEST['today'])) {
        $today = date("Y-m-d");
    } else {
        $today = $_REQUEST['today'];
    }
    ?>
    <section class="container">
        <div class="row">
            <div class="col-sm-12">
                <h2 class="py-2">Attendance DATA Export!</h2>
                <form class="row" action="" method="POST" id="form_upload">
                    <label for="date" class="col-1 col-form-label"><strong>Date</strong></label>
                    <div class="col-5">
                        <div class="input-group date" id="datepicker">
                            <input type="text" class="form-control" id="today" name="today" value="<?= $today ?>"
                                placeholder="YYYY-MM-DD" />
                            <span class="input-group-append">
                                <span class="input-group-text bg-light d-block">
                                    <i class="fa fa-calendar"></i>
                                </span>
                            </span>
                        </div>
                    </div>
                    <div class="col-2">
                        <input type="submit" class="btn btn-success" value="Submit" id="data_export">
                    </div>
                </form>
            </div>
        </div>
        <div class="row mt-3" id="data_progress" style="display:none;">
            <div class="col-sm-8">
                <div class="progress" style="height:35px;font-size:16px;">
                    <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
                        aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:60%">
                        Attendance data uploading. Please wait...
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php
    set_time_limit(0);
    date_default_timezone_set("Asia/Dhaka");
    require 'dbconn_mysql.php';
    require 'dbconn_access.php';
    require 'dbconnection.php';

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $(function () {
            $('#datepicker').datepicker({
                format: 'yyyy-mm-dd'
            });
        });
        $(document).ready(function () {
            $('#form_upload').submit(function () {
                $("input[type='submit']", this)
                    .val("Please Wait...")
                    .attr('disabled', 'disabled');
                $("#data_progress").show();
                return true;
            });
        });
    </script>
</body>

</html>