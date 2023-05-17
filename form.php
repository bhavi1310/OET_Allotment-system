<!DOCTYPE html>
<html>
<head>
	<title>Student Course Preferences</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
	<style>
		/* Existing CSS */
body {
	background-image: url("6.png");
	background-repeat: no-repeat;
	background-size: cover;
}

/* New CSS */
.container {
	margin-top: 50px; /* adjust as needed */
}

form {
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
	border-radius: 5px;
	text-align: center;
}

h2 {
	margin-bottom: 30px;
}

/* Add this rule to center the form horizontally */
form {
	margin: 0 auto;
	max-width: 500px;
}

	</style>

</head>
<body>
	<div class="container my-5">
		<h2 class="text-center mb-5">Enter Student Details and Course Preferences</h2>
		<form method="post" action="submit_form.php">
			<div class="mb-3">
				<label for="name" class="form-label">Name:</label>
				<input type="text" class="form-control" id="name" name="name" required>
			</div>
			<div class="mb-3">
				<label for="rollno" class="form-label">Roll No:</label>
				<input type="text" class="form-control" id="rollno" name="rollno" required>
			</div>
			<div class="mb-3">
				<label for="branch" class="form-label">Branch:</label>
				<input type="text" class="form-control" id="branch" name="branch" required>
			</div>
			<div class="mb-3">
				<label for="year" class="form-label">Year:</label>
				<select class="form-select" id="year" name="year" required>
					<option value="">--Select Year--</option>
					<option value="3rd Year">3rd Year</option>
					<option value="4th Year">4th Year</option>
				</select>
			</div>
			<div class="mb-3">
				<label for="cgpa" class="form-label">Previous Semester CGPA:</label>
				<input type="text" class="form-control" id="cgpa" name="cgpa" required>
			</div>
			<button type="button" class="btn btn-primary" id="next-btn" onclick="showCourses()">Next</button>
			<div id="course-div" style="display:none">
				<div class="mt-3">
					<label class="form-label">Course Preferences:</label>
					<div id="course-options">
					</div>
				</div>
				<button type="submit" class="btn btn-success mt-3" id="submit-btn" style="display:none">Submit</button>
			</div>
		</form>
	</div>
	
	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		function showCourses() {
  var year = document.getElementById("year").value;
  if (year == '3rd Year') {
    var courses = ['Basics of Python', 'Web Development', 'NLP', 'Data science', 'Blockchain'];
  } else if (year == '4th Year') {
    var courses = ['Data analytics', 'Machine Learning', 'Cyber security', 'UI Programming', 'Big Data'];
  } else {
    var courses = [];
  }
  var courseDiv = document.getElementById("course-div");
  var courseOptions = document.getElementById("course-options");
  courseOptions.innerHTML = '';
  for (var i = 1; i <= 3; i++) {
    var prefLabel = document.createElement("label");
    prefLabel.appendChild(document.createTextNode("Preference " + i + ": "));
    prefLabel.appendChild(document.createElement("br")); // add line break
    for (var j = 0; j < courses.length; j++) {
      var courseRadio = document.createElement("input");
      courseRadio.type = "radio";
      courseRadio.name = "preference_" + i;
      courseRadio.value = courses[j];
      var courseLabel = document.createElement("label");
      courseLabel.appendChild(courseRadio);
      courseLabel.appendChild(document.createTextNode(courses[j]));
      prefLabel.appendChild(courseLabel);
      prefLabel.appendChild(document.createElement("br")); // add line break
	  
    }
    courseOptions.appendChild(prefLabel);
	courseOptions.appendChild(document.createElement("hr"));
  }
  courseDiv.style.display = "block";
  document.getElementById("next-btn").style.display = "none";
  document.getElementById("submit-btn").style.display = "block";
}

	</script>
</body>
</html>
