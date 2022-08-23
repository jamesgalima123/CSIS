<?php 

include "../dbconnection.db.php";

$password = $_POST['password'];
$id = $_POST['id'];
  $sql = "SELECT * FROM users WHERE id ='$id'";
  $result = mysqli_query($conn, $sql);

 if (mysqli_num_rows($result) === 1) {
  echo $id;

  $sql = "UPDATE users SET password = '$password' WHERE id = '$id'";
  $result = mysqli_query($conn, $sql);

    header("Location: ../../admin/management/userlist.admin.php?success=Password is successfuly changed");
    exit();
  } 
  