<?php

// Example of bad code leading to possibility of SQL Injections
if (isset($_POST['email']) && isset($_POST['password'])) {
    $e = $_POST['email'];
    $p = $_POST['password'];
    $sql = "SELECT name FROM users
                WHERE email = '$e'
                AND password = '$p'";
    $stmt = $pdo->query($sql);
}

// Use $stmt = $pdo->prepary($sql);
// $stmt->execute(array(...))
//
// Placeholders will be replaced with actual strings with necessary escape characters,
// this will disable the possibility of SQL Injections