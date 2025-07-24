<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Uday</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

    <header>
        <nav id="home">
            <span class="navname">Uday.</span>

            <span class="navitems">
                <a href="index.html">HOME</a>
                <a href="#about">ABOUT </a>
                <a href="#project">PROJECT</a>
                <a href="#skills">SKILLS</a>
                <a href="contact.php"><button class="contact-btn">CONTACT US</button></a>
            </span>
        </nav>
    </header>

    <section id="contact">
        <h2 class="contacthead1">
            <img src="https://cdn-icons-png.flaticon.com/512/561/561127.png" alt="contactimg" width="50">Contact Me
        </h2>
        <br>
        <div class="contact-content">
            <form class="contact-form" method="post">
                <div class="formdetails">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required><br>
                </div>

                <div class="formdetails">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required><br>
                </div>

                <div class="formdetails">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="5" required></textarea><br>
                </div>

                <button type="submit" name="submitbtn" class="contact-submit-btn">Send Message</button><br>
            </form>
            <div class="cv-btn-center">
                <a href="UDAY SHARMA webdeveloper.pdf" style="text-decoration: none;" target="_blank">
                    <button class="homebtn2 downloadCvbtn">Download My CV</button>
                </a>
            </div>
        </div>
    </section>


     <footer>
       <div class="footer">
         <div class="footerlinks">
            <h2>Important Links</h2>
            <ul>
                <li>Instagram</li>
                <li>GitHub</li>
                <li>Linkedin</li>
            </ul>
        </div>
        <div class="footerlinks">
            <h2>Navigation Links</h2>
            <ul>
                <li>Home</li>
                <li>Projects</li>
                <li>Skills</li>
            </ul>
        </div>
        <div class="footerlinks">
            <h2>Contact</h2>
            <ul>
                <li>+91 7895196912</li>
                <li>udaysharmauds01@gmail.com</li>
            </ul>
        </div>
       </div>

        <div class="image" >
            <img src="portfoliologo.png" alt="udaylogo">
            <p>
                 &copy; 2024 Uday. All rights reserved.
            </p>
        </div>
    </footer>
</body>

</html>

<?php
if (isset($_POST['submitbtn'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // $conn = mysqli_connect("sql306.infinityfree.com", "if0_39541094", "KnnVWZgZAi", "if0_39541094_myportfolio");
    $conn = mysqli_connect("localhost", "root", "", "my_database");

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO portfolio (name, email, message) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sss", $name, $email, $message);
        if ($stmt->execute()) {
            echo "<script>alert('Message sent successfully!');</script>";
        } else {
            echo "<script>alert('Error sending message.');</script>";
        }
        $stmt->close();
    } else {
        echo "<script>alert('Prepare failed. Check table/columns.');</script>";
    }
    $conn->close();
}
?>
