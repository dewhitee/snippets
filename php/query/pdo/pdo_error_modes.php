<?php

require_once "pdo.php";

// PDO Errmodes are used to catch the SQL query errors and warnings

// Bad strategy to use PDO::ERRMODE_WARNING... use PDO::ERRMODE_EXCEPTION instead.
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

// This line will blow up, but because of PDO::ERRMODE_WARNING - program will continue to run
$stmt = $pdo->prepare("SELECT * FROM users WHERE user_id = :xyz");

// This line will also blow up
$stmt->execute(array(":pizza" => $_GET['user_id']));

$row = $stmt->fetch(PDO::FETCH_ASSOC);

if ($row === false) {
    echo("<p>user_id not found</p>\n");
} else {
    echo("<p>user_id found</p>\n");
}