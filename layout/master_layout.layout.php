<?php 
session_start();

if (isset($_SESSION['user_id'])) {
 
 include "head.layout.php"; ?>

<i class="fa fa-caret-square-o-down bg-primary" aria-hidden="true"></i> 
<?php include "footer.layout.php";
    }else{
        header("Location: ../canossa/master.blade.php");
        exit();
   }
?>