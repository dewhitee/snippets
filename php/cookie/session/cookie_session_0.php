<?php

// Note - cannot have any output before this
session_start();

if (!isset($_SESSION['pizza'])) {
    echo ("<p>Session is empty</p>\n");
    $_SESSION['pizza'] = 0;
} else if ($_SESSION['pizza'] < 3) {
    $_SESSION['pizza'] = $_SESSION['pizza'] + 1;
    echo ("<p>Added one...</p>\n");
} else {
    session_destroy(); // Empties out the $_SESSION array
    session_start();
    echo ("<p>Session Restarted</p>\n");
}
?>

<p><a href="cookie_session_0.php">Click Me!</a></p>
<p>Our Session ID is: <?= session_id(); ?></p>
<pre>
<?php print_r($_SESSION); ?>
</pre>