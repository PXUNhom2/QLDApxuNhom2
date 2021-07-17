<?php
ob_start();
session_start();
include ("../config/connection.php");
if(isset($_POST["id"])&&isset($_POST["num"])){

    $id = $_POST["id"];
    if(isset($_SESSION["cart"])){
        $cart = $_SESSION["cart"];
        if(array_key_exists($id, $cart)){
            if($_POST["num"]){
               $cart[$id] = array(
                'name'=>$cart[$id]["name"],
                'image'=>$cart[$id]["image"],
                'price'=>$cart[$id]["price"],
                'number'=>$_POST["num"]);
           }
           else{
            unset($cart[$id]);
        }
        
        $_SESSION["cart"]=$cart;
    }
}
}

?>

