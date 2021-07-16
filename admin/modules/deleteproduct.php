
<?php

if (isset($_GET["module"]) && isset($_GET["id"])) {

    $sqlDel = "DELETE FROM product WHERE ProductID=".$_GET["id"];
    mysqli_query($conn, $sqlDel);
    header('Location: index.php?module=listproduct');
}

 