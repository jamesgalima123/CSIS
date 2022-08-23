<?php
include_once '../dbconnection.db.php';

$id = $_GET['cid']; 

$query = "DELETE from course where id = '$id'";
$data = mysqli_query($conn, $query);

if($data){
    header("Location: ../../admin/program/courselist.admin.php");
}