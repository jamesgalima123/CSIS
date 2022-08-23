<?php
include_once '../dbconnection.db.php';
$pre = $_POST['pre'];
$mid = $_POST['mid'];
$fin = $_POST['fin'];
$subject = $_POST['subject'];
$student = $_POST['student'];
$course = $_POST['course'];




$con = mysqli_query($conn, "UPDATE prelims set grade='$pre' where student_id = '$student' and subject = '$subject'");
$con = mysqli_query($conn, "UPDATE midterms set grade='$mid' where student_id = '$student' and subject = '$subject'");
$con = mysqli_query($conn, "UPDATE finals set grade='$fin' where student_id = '$student' and subject = '$subject'");
header("Location: ../../teacher/gradingsheet.teacher.php?sub=$subject&course=$course&year=$year");

