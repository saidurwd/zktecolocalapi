<!DOCTYPE html>
<html>

<head>
	<title>Attendance Data</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>SL</th>
				<th>employee_name</th>
				<th>employee_id</th>
				<th>attendance_date</th>
				<th>clock_in</th>
				<th>clock_out</th>
			</tr>
		</thead>
		<thead>
			<?php
			date_default_timezone_set("Asia/Dhaka");
			require 'dbconn_mysql.php';

			$sql_data  = "SELECT U.`Name` AS employee_name, U.`Badgenumber` AS employee_id, DATE_FORMAT(C.CHECKTIME, '%Y-%m-%d') AS attendance_date, MIN(DATE_FORMAT(C.CHECKTIME, '%H:%i:%s')) AS clock_in, MAX(DATE_FORMAT(C.CHECKTIME, '%H:%i:%s')) AS clock_out
			FROM CHECKINOUT  C
			LEFT JOIN USERINFO U ON U.USERID=C.USERID
			GROUP BY DATE_FORMAT(C.CHECKTIME, '%Y-%m-%d'), U.`Badgenumber` ORDER BY C.CHECKTIME DESC, U.`Badgenumber` ASC";
			$result_data = $conn->query($sql_data);
			if ($result_data->num_rows > 0) {
				$i = 1;
				while ($row_data = $result_data->fetch_assoc()) {
					?>
				<tr>
					<td><?= $i++ ?></td>
					<td><?= $row_data["employee_name"] ?></td>
					<td><?= $row_data["employee_id"] ?></td>
					<td><?= $row_data["attendance_date"] ?></td>
					<td><?= $row_data["clock_in"] ?></td>
					<td><?= $row_data["clock_out"] ?></td>
				</tr>
			<?php
				}
			}
			?>
		</thead>
	</table>
</body>
</html>