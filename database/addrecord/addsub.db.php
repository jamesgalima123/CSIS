<?php

include_once '../dbconnection.db.php';

if (isset($_POST['ok'])) {
    $description = $_POST['subject'];
    $tid = $_POST['tid'];

    $sql = "SELECT * from sublists where description = '$description'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $subcode = $row['subject_code'];
            $units = $row['units'];
        }
    }

    $sq = "INSERT INTO subjects (teacher_id, description, subcode, units) 
    values ('$tid','$description','$subcode','$units');";


    $sql = "SELECT * from subjects where description = '$description'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $des = $row['description'];
        }
    } 

    if($description == $des){
       
            header("Location: ../../admin/teacher/teacher.admin.php?tid=$tid");
        

    }else{
        $result = mysqli_query($conn, $sq);

    if ($result == 1) {
        header("Location: ../../admin/teacher/teacher.admin.php?tid=$tid");
    }

    }
   
}
