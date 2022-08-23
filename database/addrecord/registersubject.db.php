<?php

include_once '../dbconnection.db.php';

    $subcode = $_POST['subcode'];
    $des = $_POST['des'];
    $unit = $_POST['unit'];
  

    $sql = "INSERT INTO sublists (subject_code, description, units) 
    VALUES ('$subcode', '$des', '$unit');";

$sq = "SELECT * from sublists where subject_code = '$subcode'";
$resul = $conn->query($sq);
if ($resul->num_rows > 0) {
    while ($row = $resul->fetch_assoc()) {
        $subject_code = $row['subject_code'];
    }
}

if ($subcode == $subject_code) {
    header("Location: ../../admin/program/subjectlist.admin.php?error.");
    exit();
} else{
    $query=mysqli_query($conn,$sql) or die (mysqli_error($conn));    
            header("Location: ../../admin/program/subjectlist.admin.php?succesfull");
}

   