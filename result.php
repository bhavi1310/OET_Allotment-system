<?php



$user = 'root';
$password = '';


$database = 'bd';


$servername='localhost:3306';
$mysqli = new mysqli($servername, $user, $password, $database);


if ($mysqli->connect_error) {
    die('Connect Error (' .
    $mysqli->connect_errno . ') '.
    $mysqli->connect_error);
}



$sql = " SELECT * FROM allocated_students ";
$result = $mysqli->query($sql);

$sql2 = "SELECT * FROM allocated_students2";
$result2 = $mysqli->query($sql2);


$mysqli->close();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>STUDENTS</title>
    <style>
        table {
    border-collapse: collapse;
    width: 80%;
    margin: 0 auto;
    font-size: 14px;
    text-align: center;
    background-color: #ffffff;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
}

th {
    background-color: #eeeeee;
    font-weight: bold;
    padding: 8px;
    border: 1px solid #cccccc;
}

td {
    padding: 8px;
    border: 1px solid #cccccc;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #dddddd;
}

h1 {
    font-size: 24px;
    text-align: center;
    margin: 20px 0;
}

    </style>
</head>

<body>
    <section>
        <h1>TY STUDENTS</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Roll no</th>
                <th>Branch</th>
                <th>CGPA</th>
		<th>Course</th>
            </tr>
            
            <?php
                while($rows=$result->fetch_assoc())
                {
            ?>
            <tr>
                
                <td><?php echo $rows['name'];?></td>
                <td><?php echo $rows['rollno'];?></td>
                <td><?php echo $rows['branch'];?></td>
                <td><?php echo $rows['cgpa'];?></td>
		<td><?php echo $rows['course'];?></td>
		
            </tr>
            <?php
                }
            ?>
        </table>
    </section>
    <section>
        <h1>LY STUDENTS</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Roll no</th>
                <th>Branch</th>
                <th>CGPA</th>
		<th>Course</th>
            </tr>
            
            <?php
                while($rows=$result2->fetch_assoc())
                {
            ?>
            <tr>
                
                <td><?php echo $rows['name'];?></td>
                <td><?php echo $rows['rollno'];?></td>
                <td><?php echo $rows['branch'];?></td>
                <td><?php echo $rows['cgpa'];?></td>
		<td><?php echo $rows['course'];?></td>
		
            </tr>
            <?php
                }
            ?>
        </table>
    </section>
</body>

</html>
