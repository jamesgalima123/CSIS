<?php
include_once '../dbconnection.db.php';
$sql = "SELECT * from teacherrecords where teacher_id = '$_GET[tid]'";
$result = $conn-> query($sql);

date_default_timezone_set('Asia/Manila');
$date = date('m/d/Y', time());

if($result-> num_rows > 0 ){
    while($row = $result-> fetch_assoc()){
       $name = $row['name'];
       $mobile = $row['cellphone'];
    }
}
$id = $_GET['tid'];



$with = "INSERT INTO resigns (teacher_id, name,  mobile_number, resigned_date) 
    VALUES ('$id', '$name', '$mobile', '$date');";
    $query = mysqli_query($conn, $with) or die(mysqli_error($conn));
    header("Location: ../../admin/teacher/teacherlist.admin.php?");



