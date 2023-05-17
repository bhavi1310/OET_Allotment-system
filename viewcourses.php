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

// start session and check if user is logged in
session_start();
if (!isset($_SESSION['course'])) {
  //header("Location: login2.php");
  exit();
}

// retrieve user's courses from database
$course = $_SESSION['course'];
$sql = "SELECT * FROM allocated_students WHERE course  = '$course'";
$result = mysqli_query($conn, $sql);

$sql2 = "SELECT * FROM allocated_students2 WHERE course  = '$course'";
$result2 = mysqli_query($conn, $sql2);
?>




<div class="course-info">
  COURSE: <?php echo $course; ?>
</div>
<style>
  /* Header styles */
  h1 {
    text-align: center;
    font-size: 2em;
    margin-top: 20px;
    margin-bottom: 30px;
  }
  
  /* Table styles */
  table {
    border-collapse: collapse;
    width: 100%;
    margin: auto;
  }
  
  th, td {
    text-align: center;
    padding: 10px;
    font-size: 1.2em;
    border: 1px solid black;
  }
  
  th {
    background-color: #00bfff;
    color: white;
    font-weight: bold;
    font-size: 1.3em;
  }
  
  /* Even and odd row styles */
  tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  
  tr:nth-child(odd) {
    background-color: white;
  }
  
  /* Hover style */
  tr:hover {
    background-color: #dcdcdc;
    cursor: pointer;
  }
  
  /* Footer styles */
  .footer {
    margin-top: 30px;
    text-align: center;
    font-size: 1.2em;
  }
  
  /* Signature styles */
  .signature {
    border-bottom: 1px solid black;
    margin-top: 20px;
    margin-right: 100px;
    margin-left: 100px;
    text-align: center;
  }
</style>

<!-- Attendance Sheet Header -->
<h1>Attendance Sheet</h1>

<!-- Attendance Sheet Table -->
<table>
  <thead>
    <tr>
      <th>Student Name</th>
      <th>Roll No</th>
      <th>Branch</th>
      <th>Signature</th>
    </tr>
  </thead>
  <tbody>
    <?php 
      while ($row = mysqli_fetch_assoc($result)) { 
    ?>
      <tr>
        <td><?php echo $row['name']; ?></td>
        <td><?php echo $row['rollno']; ?></td>
        <td><?php echo $row['branch']; ?></td>
        <td class="signature"></td>
      </tr>
    <?php 
      } 
    ?>
    <?php 
      while ($row = mysqli_fetch_assoc($result2)) { 
    ?>
      <tr>
        <td><?php echo $row['name']; ?></td>
        <td><?php echo $row['rollno']; ?></td>
        <td><?php echo $row['branch']; ?></td>
        <td class="signature"></td>
      </tr>
    <?php 
      } 
    ?>
  </tbody>
</table>

<!-- Attendance Sheet Footer -->
<div class="footer">
  
</div>




