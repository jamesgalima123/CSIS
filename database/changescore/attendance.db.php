<?php 

include "../dbconnection.db.php";
$sid = $_POST['sid'];
$sub = $_POST['sub'];
$tid = $_POST['tid'];
$term = $_POST['term'];
$course = $_POST['course'];
$subcode = $_POST['subcode'];
$score = $_POST['score'];
$stid = $_POST['stid'];
$year = $_POST['year'];


 if (isset($_POST['ok'])) {
   
    echo $sid ." " .$sub." ".$tid." ".$term." ".$course." ".$stid." ". $score;
  $sql = "UPDATE student_attendance SET score = '$score' WHERE id = '$sid' and subject_code = '$subcode' and teacher_id = '$tid' and term = '$term' and course = '$course' and student_id = '$stid'";
  $result = mysqli_query($conn, $sql);

   header("Location: ../../teacher/records/attendancerecord.teacher.php?course=$course&sub=$sub&year=$year");
   exit();
  } 