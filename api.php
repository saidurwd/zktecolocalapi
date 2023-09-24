<!DOCTYPE html>
<html>

<head>
	<title>Attendance upload - API</title>
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
			$.get("api_data.php", function(response, status) {
				//console.log(response)
				var data = JSON.parse(response);
				//console.log(data);
				$.ajax({
					url: "http://localhost:8888/peoplepro-v1.2.3/api/v1/create",
					method: "POST", //POST / GET
					//dataType: "jsonp",
                    // headers: {
                    //     'X-CSRF-TOKEN': 'm3tX8JjVXsWhSd31Y9esq1S4yBbaPz17sHVWzlBH'
                    // },
					data: {
						data: data
					},
					//crossDomain:true,
					success: function(data) {
						//console.log(data);
					}
				});
			});
			/*--------start counter-----------*/
			counter = 3600;
		}
	</script>
</body>

</html>