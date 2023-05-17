<?php
// Connect to database
$host = "localhost"; // Your host name
$user = "root"; // Your database username
$pass = ""; // Your database password
$dbname = "bd"; // Your database name
$conn = mysqli_connect($host, $user, $pass, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Register new user
if(isset($_POST['register'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];
    
    // Check if passwords match
    if($password != $confirm_password) {
        echo "Passwords do not match!";
    }
    else {
        // Insert user into database
        $sql = "INSERT INTO users (name, email, username, password) VALUES ('$name', '$email', '$username', '$password')";
        if(mysqli_query($conn, $sql)) {
            echo "<script>alert('Registration successfull!');</script>";
        }
        else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }
}

// Login user
if(isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    // Check if username and password match database
    $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $sql);
    
    if(mysqli_num_rows($result) == 1) {
    // Redirect to index.html
    header("Location: index.html");
    exit();
}
else {
   echo "<script>alert('Invalid username or password!');</script>";
}

}

// Close connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
	<title>STUDENT LOGIN</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
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

	<div class="container">
		<h2 class="text-center mb-5">New here? REGISTER! </h2>
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">

				<!-- Registration form -->
				<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
					<div class="form-group">
						<label for="name">Name</label>
						<input type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<input type="email" class="form-control" id="email" name="email" required>
					</div>
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" class="form-control" id="username" name="username" required>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" id="password" name="password" required>
					</div>
					<div class="form-group">
						<label for="confirm_password">Confirm Password</label>
						<input type="password" class="form-control" id="confirm_password" name="confirm_password" required>
					</div>
					<button type="submit" class="btn btn-primary" name="register">Register</button>
				</form>

				<!-- Login form -->
				<h2 class="text-center mb-5">Already a user? LOGIN! </h2>
				<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" class="mt-5">
					<div class="form-group">
						<label for="login_username">Username</label>
						<input type="text" class="form-control" id="login_username" name="username" required>
					</div>
					<div class="form-group">
						<label for="login_password">Password</label>
						<input type="password" class="form-control" id="login_password" name="password" required>
					</div>
					<button type="submit" class="btn btn-primary" name="login">Login</button>
				</form>

			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html>
