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

// get form data
$name = $_POST['name'];
$rollno = $_POST['rollno'];
$branch = $_POST['branch'];
$year = $_POST['year'];
$cgpa = $_POST['cgpa'];
$course1 = $_POST['preference_1'];
$course2 = $_POST['preference_2'];
$course3 = $_POST['preference_3'];


// insert data into database
if($year==3){
// Get number of rows in the table
$sql = "SELECT COUNT(*) AS row_count FROM course_allotment ";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  $row = mysqli_fetch_assoc($result);
  $row_count = $row["row_count"];
  if($row_count>=100)
	{
echo "<script>alert('Forms are no longer accepting responses!');</script>";
}
  else{
$sql = "INSERT INTO course_allotment (name, rollno, branch, year, cgpa, course1, course2, course3) 
        VALUES ('$name', '$rollno', '$branch', '$year', '$cgpa', '$course1', '$course2', '$course3')";
if (mysqli_query($conn, $sql)) {
  echo "<script>alert('Form submitted sucessfully!');</script>";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

}
}
}
if($year==4){
  $sql = "SELECT COUNT(*) AS row_count FROM course_allotment2 ";
  $result = mysqli_query($conn, $sql);
  
  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $row_count = $row["row_count"];
    if($row_count>=100)
    {
 echo "<script>alert('Forms are no longer accepting responses!');</script>";
  }
    else{
  $sql = "INSERT INTO course_allotment2 (name, rollno, branch, year, cgpa, course1, course2, course3) 
          VALUES ('$name', '$rollno', '$branch', '$year', '$cgpa', '$course1', '$course2', '$course3')";
  if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Form submitted sucessfully!');</script>";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
  }
  
  }
  }
  }

// close database connection
mysqli_close($conn);
?>
