<?php
// database connection information
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bd";

// create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// define variables for random data generation
$names = array("John", "Mary", "David", "Susan", "Robert", "Emily", "Michael", "Jessica");
$branches = array("CS", "IT", "MEC", "EXTC");
$courses = array("Basics of Python", "Web Development", "NLP", "Data science", "Blockchain");
$years = array("3rd year");
$cgpa_range = array(6.0, 9.5);

// loop to fill the form 100 times
for ($i = 1; $i <= 99; $i++) {
  // generate random data
  $name = $names[array_rand($names)];
  $rollno = rand(100000, 999999);
  $branch = $branches[array_rand($branches)];
  $year = $years[array_rand($years)];
  $cgpa = number_format((float)rand($cgpa_range[0]*10, $cgpa_range[1]*10)/10, 1, '.', '');
  $course1 = $courses[array_rand($courses)];
  $course2 = $courses[array_rand($courses)];
  $course3 = $courses[array_rand($courses)];

  // insert data into database
  $sql = "INSERT INTO course_allotment (name, rollno, branch, year, cgpa, course1, course2, course3) 
          VALUES ('$name', '$rollno', '$branch', '$year', '$cgpa', '$course1', '$course2', '$course3')";

  if (mysqli_query($conn, $sql)) {
    echo "Form submitted successfully for entry #{$i}!<br>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
}

// close database connection
mysqli_close($conn);
?>
