<?php

require_once "pdo.php";

$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try {
    $stmt = $pdo->prepare("SELECT * FROM users WHERE user_id = :xyz");
    $stmt->execute(array(":pizza" => $_GET['user_id']));

} catch (Exception $e) {

    // In development mode
    echo("Exception message: ".$e->getMessage());

    // In production mode
    echo("Internal error, please contact support.");
    error_log("pdo_error_exception_handling.php, SQL error=".$e->getMessage());
    return;
}

$row = $stmt->fetch(PDO::FETCH_ASSOC);
