<?php
include_once '../dbconnection.db.php';
$sql = "SELECT * from studentrecords where student_id = '$_GET[stid]'";
$result = $conn-> query($sql);

date_default_timezone_set('Asia/Manila');
$date = date('m/d/Y', time());

if($result-> num_rows > 0 ){
    while($row = $result-> fetch_assoc()){
       $name = $row['name'];
       $course = $row['course'];
       $mobile = $row['cellphone'];
    }
}
$id = $_GET['stid'];





$with = "INSERT INTO withdrawns (student_id, name, course, mobile_number, withdraw_date) 
    VALUES ('$id', '$name', '$course ', '$mobile', '$date');";
    $query = mysqli_query($conn, $with) or die(mysqli_error($conn));
    header("Location: ../../admin/student/studentlist.admin.php?");



