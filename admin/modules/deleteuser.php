
<?php

if (isset($_GET["module"]) && isset($_GET["id"])) {

	
    $sqlDel = "DELETE FROM member WHERE MemberID=".$_GET["id"];
    mysqli_query($conn, $sqlDel);

    header('Location: index.php?module=listuser');
}

 