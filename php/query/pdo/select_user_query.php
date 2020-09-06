<?php

// xampp/linux  port=3306
// mac          port=8889

$pdo = new PDO('mysql:host=localhost;port=8889;dbname=misc', 'fred', 'zap');
$stmt = $pdo->query("SELECT name, email, password FROM users");

echo '<table border="1">'."\n";
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    echo "<tr><td>";
    
    echo($row['name']);
    echo("</td><td>");

    echo($row['email']);
    echo ("</td><td>");

    echo ($row['password']);
    echo ("</td></tr>");
}

echo "</table>\n";?>