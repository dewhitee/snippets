<?php

if (isset($_POST['delete']) && isset($_POST['user_id'])) {
    $sql = "DELETE FROM users WHERE user_id = :zip";

    echo "<pre>\n$sql\n</pre>\n";

    $stmt = $pdo->prepare($sql);
    $stmt->execute(array(':zip' => $_POST['user_id']));
}
?>

<html>
    <head>

    </head>
    <body>
    
    <table border="1">
        <?php
            $stmt = $pdo->query("SELECT name, email, password, user_id FROM users");
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                echo "<tr><td>";

                echo ($row['name']);
                echo ("</td><td>");

                echo ($row['email']);
                echo ("</td><td>");

                echo ($row['password']);
                echo ("</td></tr>");

                echo('<form method="post"><input type="hidden" ');
                echo('name="user_id" value="'.$row['user_id'].'">'."\n");
                echo('<input type="submit" value="Del" name="delete"');
                echo("\n</form>\n");
                echo("</td></tr>\n");
            }
        ?>
    </table>

    </body>



</html>
