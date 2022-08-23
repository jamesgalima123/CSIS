<?php
include_once '../dbconnection.db.php';
$id = $_POST['studentid'];
$sub = $_GET['sub'];
$course = $_POST['course'];
$grade = $_POST['grade'];
$year = $_GET['year'];

$sql2 = "SELECT * from gradingstatus ";
$result2 = $conn->query($sql2);
if ($result2->num_rows > 0) {
    while ($row2 = $result2->fetch_assoc()) { 
      
  $term = $row2['term']."s";

    }}

$sid = array();
$grad = array();


foreach( $id as $id ) {
array_push($sid, $id);  
  }
  foreach( $grade as $grade ) {
    array_push($grad, $grade);  
      }

$i = count($grad);
$j = 0;

//print_r(array_values($grad));
//print_r(array_values($sid));

for($j = 0; $j < $i; $j++) {
  //print $uid[$j];
  //print $pass[$j];

  $sql = "INSERT INTO $term (student_id, subject, grade) 
  VALUES ('$sid[$j]','$sub','$grad[$j]');";
  $result = mysqli_query($conn, $sql);
  header("Location: ../../admin/student/gradeassess.admin.php?success=Grade is successfuly submitted &sub=$sub&course=$course&year=$year");
}