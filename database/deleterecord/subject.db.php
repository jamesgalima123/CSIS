<?php
include_once '../dbconnection.db.php';

$subcode = $_GET['subcode']; 

$query = "DELETE from sublists where subject_code = '$subcode'";
$data = mysqli_query($conn, $query);


if($data){
    header("Location: ../../admin/program/subjectlist.admin.php?success=deleted");
}