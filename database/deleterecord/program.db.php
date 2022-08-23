<?php
include_once '../dbconnection.db.php';

$subcode = $_GET['subcode']; 
$des = $_GET['des'];

$query = "DELETE from programs where subject = '$subcode' and course = '$des'";
$data = mysqli_query($conn, $query);


if($data){
    header("Location: ../../admin/program/course.admin.php?des=$des");
}