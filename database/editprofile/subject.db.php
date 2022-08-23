<?php

include_once '../dbconnection.db.php';

$id = $_POST['id'];
$name = $_POST['name'];
$units = $_POST['units'];
$code = $_POST['code'];
echo $code;
$sql = "UPDATE sublists
SET subject_code = '$code', description = '$name', units = '$units' 
WHERE id = '$id';";

$result = mysqli_query($conn, $sql);


header("Location: ../../admin/program/subjectlist.admin.php?success=succesfull");;