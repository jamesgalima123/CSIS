<?php
include_once '../dbconnection.db.php';

$studentid = $_GET['stid']; 

$query = "DELETE from withdrawns where student_id = '$studentid'";
$data = mysqli_query($conn, $query);

    header("Location: ../../admin/student/withdrawnlist.admin.php");
