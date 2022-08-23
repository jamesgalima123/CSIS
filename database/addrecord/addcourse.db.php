<?php

include_once '../dbconnection.db.php';

if (isset($_POST['ok'])) {
    $course = $_POST['description'];

    $sql = "INSERT INTO course (description) 
    VALUES ('$course');";
    $result = mysqli_query($conn, $sql);


    header("Location: ../../admin/program/courselist.admin.php?succesfull");;
}
