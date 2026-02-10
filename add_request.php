<?php 
$conn = new mysqli('localhost', 'root', '', 'peer_tutor_finder', 3307);

if ($conn->connect_error) {
    die('Connection Failed : ' . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST['student_name'];
    $email = $_POST['email'];
    $subject = $_POST['subject_code'];
    $desc = $_POST['description'];

    $sql = "INSERT INTO tutor_requests (student_name, subject_code, email, description) VALUES ('$name', '$subject', '$email', '$desc')";
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
            <h2 class="header-title">Request a Tutor</h2>
            <p>Need help with your studies?<a> Request a peer tutor today!</a></p>
            <hr/>
        <form class="tutor-form" method="POST" action="/peerTutorFinder/add_request.php">
            <div class="form-group">
                <input type="text" id="name" name="student_name" required>
                <label for="name">Full Name</label>
            </div>
            <div class="form-group">
                <input type="email" id="email" name="email" required>
                <label for="email">Email Address</label>
            </div>
            <div class="form-group">
                <input type="text" id="subject" name="subject_code" required>
                <label for="subject">Subject</label>
            </div>
            
            <div class="form-group">
                <textarea id="description" name="description" required></textarea>
                <label for="description">Descirbe Your Problem</label>
            </div>
            <button type="submit" class="action-btn submit-btn">Submit Request</button>
        </form>
<script src="main.js"></script>  
</body>
</html>

