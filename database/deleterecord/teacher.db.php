<?php
include_once '../dbconnection.db.php';

$teacherid = $_GET['tid']; 


$query = "DELETE from resigns where teacher_id = '$teacherid'";
$dat = mysqli_query($conn, $query);


    header("Location: ../../admin/teacher/resignlist.admin.php?success=deleted");
