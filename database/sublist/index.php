<?php
    include_once '../../database/dbconnection.db.php'; 
    if(isset($_GET['id'])){
        $array = array(); 
        $id = $_GET['id'];
        $sql = "SELECT * FROM sublists WHERE `id`= $id;";
       $result = $conn-> query($sql);  
       if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $array[] = $row;
            }
       }
       echo json_encode($array) ;
    }
    
?>