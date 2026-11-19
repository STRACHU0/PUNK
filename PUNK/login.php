<?php
session_start();
require("db.php");

$loginToTest = "admin";
$passToTest = "pass123"; // Pamiętaj, że w docelowym systemie lepiej użyć password_hash

if ($_POST['login'] == $loginToTest && $_POST['password'] == $passToTest) {
    $_SESSION['user'] = $_POST['login'];
    // Przekieruj do panelu próśb po zalogowaniu
    header("Location: admin_requests.php");
    exit();
} else {
    echo "Błędne dane logowania. <a href='admin.php'>Spróbuj ponownie</a>";
}
?>