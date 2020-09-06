<?php

// mysqli (new)
$mysqli = new mysqli("example.com", "user", "password", "database");
$result = $mysqli->query("SELECT 'Hello, dear MySQL user!' AS _message FROM DUAL");
$row = $result->fetch_assoc();
echo htmlentities($row['_message']);

// PDO (new PREFERRED)
$pdo = new PDO('mysql:host=example.com;dbname=database', 'user', 'password');
$statement = $pdo->query("SELECT 'Hello, dear MySQL user!' AS _message FROM DUAL");
$row = $statement->fetch(PDO::FETCH_ASSOC);
echo htmlentities($row['_message']);

// mysql (deprecated)
// $c = mysql_connect("example.com", "user", "password");
// mysql_select_db("database");
// $result = mysql_query("SELECT 'Hello, dear MySQL user!' AS _message FROM DUAL");
// $row = mysql_fetch_assoc($result);
// echo htmlentities($row['_message']);