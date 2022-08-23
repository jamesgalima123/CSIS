<?php

include_once '../dbconnection.db.php';

$id = $_GET['id'];
$address = $_POST['address'];
$cellphone = $_POST['cellphone'];

$sql = "UPDATE studentrecords
SET address = '$address', cellphone = '$cellphone' 
WHERE student_id = '$id';";

$result = mysqli_query($conn, $sql);


header("Location: ../../student/profile.student.php?success=succesfull");;