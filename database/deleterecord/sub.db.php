<?php
include_once '../dbconnection.db.php';

$subcode = $_GET['subcode']; 


$sql = "SELECT * from subjects where subcode = '$subcode'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $tid = $row['teacher_id'];
        }
    } 


$query = "DELETE from subjects where subcode = '$subcode'";
$data = mysqli_query($conn, $query);

if($data){
    header("Location: ../../admin/teacher/teacher.admin.php?tid=$tid");
}