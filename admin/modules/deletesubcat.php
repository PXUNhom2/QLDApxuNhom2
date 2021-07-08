
<?php

if (isset($_GET["module"]) && isset($_GET["id"])&& isset($_GET["sid"])) {
    
    $sqlDel = "DELETE FROM subcategory WHERE SubCategoryID=".$_GET["sid"];
    mysqli_query($conn, $sqlDel);
    header('Location: index.php?module=listcategory');
}
?>
 
