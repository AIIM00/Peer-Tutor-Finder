<?php
$conn = new mysqli('localhost', 'root', '', 'peer_tutor_finder', 3307);

if ($conn->connect_error) {
    die('Connection Failed : ' . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST['tutor-name'];
    $email = $_POST['tutor-email'];
    $school = $_POST['school-name'];
    $major = $_POST['major-name'];
    $courses = $_POST['courses-json'];

    $sql = "INSERT INTO tutors (name, email, school,major,courses) VALUES ('$name', '$email','$school','$major','$courses')";
    $conn->query($sql);}
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register as a Tutor</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header class="header">
        <h1 class="header-title"><a>Peer Tutor Finder</a></h1>
        <nav>
            <a href="index.php">Home</a>
            <a href="add_tutors.php">Become a Tutor</a>
            <a href="add_request.php">Request a Tutor</a>
            <a href="search.php">Find a Tutor</a>
        </nav>
    </header>
    <main>
        <section class="tutor-intro">
            <h2 class="header-title">Register as a Tutor</h2>
            <p>Join our community of peer tutors and help fellow <a>students succeed!</a></p>
            <hr/>
        </section>
        <form class="tutor-form" method="POST" action="add_tutors.php">
            <div class="form-group">
                <input type="text" id="tutor-name" name="tutor-name" required>
                <label for="name">Full Name</label>
            </div>
            <div class="form-group">
                <input type="email" id="tutor-email" name="tutor-email" required>
                <label for="email">Email Address</label>
            </div> 
            <div class="radio-section">
                <h2>School Of</h2>
                <div id="schools" class="radio-group"></div>
                <input type="hidden" name='school-name' id="schoolInput">
                <h2>MAJOR</h2>
                <div id="majors" class="radio-group"></div>
                <input type="hidden" name="major-name" id="majorInput">
                <h2>COURSES</h2>
                <div id="courses" class='checkbox-group'></div> 
                <input type="hidden" name="courses-json" id="coursesJson">

            </div>
            <button type="submit" class="action-btn tutor-submission">Submit</button>
        </form>
    </main>
    
    
<script src="main.js" type='module'></script>
</body>
</html>
