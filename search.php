<?php
$conn = new mysqli('localhost', 'root', '', 'peer_tutor_finder', 3307);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Only run the query if 'course' is set in the URL
$course = $_GET['course'] ?? ''; // PHP 7+ null coalescing operator

$result = [];
if (!empty($course)) {
    $sql = "SELECT * FROM tutors WHERE courses LIKE '%$course%'";
    $queryResult = $conn->query($sql);
    setcookie("last_course", $course, time() + 86400, "/");

    if ($queryResult) {
        $result = $queryResult->fetch_all(MYSQLI_ASSOC);
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find a Tutor</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
            <h2 class="header-title">Find a Tutor</h2>
            <p>Search for peer tutors available to<a> help you!</a></p>
            <hr/>
            <form class="tutor-form" method="GET" action="search.php">
                <div class="form-group">
                    <input type="text" id="course" name="course" required>
                    <label for="subject">Course Code</label>
                </div>
                <button id='search-btn' type="submit" class="action-btn tutor-submission"><i class="bi bi-search"></i></button> 
            </form>
        </section>
    </main>
    <script src='main.js' type='module'></script>
</body>
</html>
<?php if (isset($_COOKIE['last_course'])): ?>
        <p class='last-search'>Last searched <a><strong><?= htmlspecialchars($_COOKIE['last_course']) ?></strong></a></p>
<?php endif; ?>
<?php if (!empty($result)) : ?>
<section class="tutor-results">
    <h3>Search Results</h3>
    <div class="tutor-cards-container">
        <?php foreach ($result as $tutor) : ?>
            <?php 
                $str = $tutor['courses'];
                $clean = str_replace(['[', ']', '"'], '', $str);
                $courses = str_replace(',', ' | ', $clean);
            ?>
            <div class="tutor-card">
                <div class="tutor-card-header">
                    <h4><?= htmlspecialchars($tutor['name']) ?></h4>
                </div>
                <div class="tutor-card-body">
                    <p><i class="bi bi-book"></i> <a><strong>Courses:</strong></a> <?= htmlspecialchars($courses) ?></p>
                    <p><i class="bi bi-envelope"></i><a> <strong>Email:</strong></a> <?= htmlspecialchars($tutor['email']) ?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</section>
<?php elseif ($course != ''): ?>
<p class='last-search'>No tutors found for "<strong><?= htmlspecialchars($course) ?></strong>".</p>
<?php endif; ?>