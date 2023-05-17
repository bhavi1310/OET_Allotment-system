<?php

// Database credentials
$host = 'localhost';
$dbname = 'bd';
$username = 'root';
$password = '';

// Connect to the database using PDO
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
} catch (PDOException $e) {
    die("Failed to connect to database: " . $e->getMessage());
}

// Define available seats for each course
$available_seats = array(
    'Basics of Python' => 20,
    'Web Development' => 20,
    'NLP' => 20,
    'Data science' => 20,
    'Blockchain' => 20
);

// Read student data from the database
$students_query = "SELECT * FROM course_allotment";
$students_stmt = $pdo->prepare($students_query);
$students_stmt->execute();
$students = $students_stmt->fetchAll(PDO::FETCH_ASSOC);

// Sort the students based on their CGPA
usort($students, function($a, $b) {
    return $b['cgpa'] <=> $a['cgpa'];
});





// Allocate courses to students based on their preferences, availability of seats, and previous semester CGPA
$allocated_students = array();

foreach ($students as $student) {
    $name = $student['name'];
    $rollno = $student['rollno'];
    $branch = $student['branch'];
    $year = $student['year'];
    $cgpa = $student['cgpa'];
    $preference_1 = $student['course1'];
    $preference_2 = $student['course2'];
    $preference_3 = $student['course3'];

    $allocated_course = null;

    // Check if the student's first preference is available
    if ($available_seats[$preference_1] > 0) {
        $allocated_course = $preference_1;
        $available_seats[$preference_1]--;
    } else {
        // Check if the student's second preference is available
        if ($available_seats[$preference_2] > 0) {
            $allocated_course = $preference_2;
            $available_seats[$preference_2]--;
        } else {
            // Check if the student's third preference is available
            if ($available_seats[$preference_3] > 0) {
                $allocated_course = $preference_3;
                $available_seats[$preference_3]--;
            } else {
                // No preference available, allocate to the next available course
                foreach ($available_seats as $course => $seats) {
                    if ($seats > 0) {
                        $allocated_course = $course;
                        $available_seats[$course]--;
                        break;
                    }
                }
            }
        }
    }

    if ($allocated_course != null) {
        $allocated_students[$allocated_course][] = array(
            'name' => $name,
            'rollno' => $rollno,
            'branch' => $branch,
            'year' => $year,
            'cgpa' => $cgpa
        );

	// Insert the student's data into the database
        $insert_query = "INSERT INTO allocated_students (name, rollno, branch, year, cgpa, course) 
            VALUES (:name, :rollno, :branch, :year, :cgpa, :course)";
        $stmt = $pdo->prepare($insert_query);
        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':rollno', $rollno);
        $stmt->bindParam(':branch', $branch);
        $stmt->bindParam(':year', $year);
        $stmt->bindParam(':cgpa', $cgpa);
        $stmt->bindParam(':course', $allocated_course);
        $stmt->execute();
    }
}

// Display the list of allocated students for each course
foreach ($allocated_students as $course => $students) {
    echo '<h2>'.$course.'</h2>';
    echo '<table>';
    echo '<tr><th>Name</th><th>Roll No.</th><th>Branch</th><th>Year</th><th>CGPA</th></tr>';
    foreach ($students as $student) {
        echo '<tr>';
        echo '<td>'.$student['name'].'</td>';
        echo '<td>'.$student['rollno'].'</td>';
        echo '<td>'.$student['branch'].'</td>';
        echo '<td>'.$student['year'].'</td>';
        echo '<td>'.$student['cgpa'].'</td>';
        echo '</tr>';
    }
    echo '</table>';
}

?>