
<?php

if (isset($_GET["module"]) && isset($_GET["id"])) {

    $sqlDel = "DELETE FROM product WHERE pro_id=".$_GET["id"];
    mysqli_query($conn, $sqlDel);
    header('Location: index.php?module=listproduct');
}

 