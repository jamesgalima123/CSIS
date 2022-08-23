<?php
include_once '../dbconnection.db.php';

$sub = $_GET['sub']; 
$id = $_GET['stid']; 

$query = "DELETE from studentsubs where subject = '$sub' and student_id = '$id'";
$data = mysqli_query($conn, $query);


if($data){
    header("Location: ../../admin/student/irregular.admin.php?stid=$id");
}