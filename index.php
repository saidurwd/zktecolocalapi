<!DOCTYPE html>
<html>

<head>
	<title>API Attendance</title>
</head>

<body>
	<?php include 'cors.php'; ?>
	<div class="body-content" style="max-width: 30%;margin: 0 auto">
		<h3 id="timer_show"></h3>
	</div>
	<script type="text/javascript" src="JQuery3.2.1.min.js"></script>
	<script type="text/javascript">
		var counter = 5;
		intID = setInterval(Gettime, 1000);

		function Gettime() {
			document.getElementById("timer_show").innerHTML = 'Next Upload After = ' + counter;
			--counter
			if (counter === 0) {
				/*----------if time is out then call the function-------------*/
				callFunction();
			}
		}

		function callFunction() {
			$.get("checkinout.php", function(response, status) {
				//console.log(response)
				var data = JSON.parse(response);
				//console.log(data);
				$.ajax({
					url: "http://localhost:8888/zktecolocalapi/checkinout_create.php",
					method: "POST", //POST / GET
					//dataType: "jsonp",
					data: {
						data: data
					},
					//crossDomain:true,
					success: function(data) {
						//console.log(data)
					}
				});
			});
			/*--------start counter-----------*/
			counter = 3600;
		}
	</script>
</body>

</html>