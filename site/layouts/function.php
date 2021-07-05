<?php
    function save($table,$data){
        $val="";
        $filed = "";
        if(is_array($data)){
            $i=0;
            foreach ($data as $key => $value){
                if ($key != "addnew"){
                    $i++;
                    if($i==1){
                        $filed .= $key;
                        $val .= "'".$value."'";
                    } else {
                        $filed .= ','.$key;
                        $val .= ",'".$value."'";
                    }
                }
            }
        }
      
        $sqlInsert = "insert into $table($filed) values ($val)";
        // die($sqlInsert);
        return $sqlInsert;
    }
//UPDATE category SET CatName = '$catName',`Status`='$status' WHERE id =".$_GET["id"]
    function update($table,$data,$condition){
         $filed = "";
        if(is_array($data)){
            $i=0;
            foreach ($data as $key => $value){
                if ($key != "update"){
                    $i++;
                    if($i==1){
                        $filed .= $key."='".$value."'";
                       
                    } else {
                        $filed .= ','.$key."='".$value."'";
                    }
                }
            }
        }
      
        $sqlUpdate = "UPDATE  $table SET $filed $condition";
        return $sqlUpdate;
    }
    


