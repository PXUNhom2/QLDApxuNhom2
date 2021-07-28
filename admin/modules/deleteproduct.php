
<?php

if (isset($_GET["module"]) && isset($_GET["id"])) {
    $sp_ma = $_GET["id"];
    $sqlDel = "DELETE FROM product WHERE ProductID=".$sp_ma;
    mysqli_query($conn, $sqlDel);
    header('Location: index.php?module=listproduct');
}

 