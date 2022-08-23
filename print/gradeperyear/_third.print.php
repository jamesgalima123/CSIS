<?php
session_start();
include_once '../../database/dbconnection.db.php';
if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];

?>
    <!-- header -->
    <title>CSIS</title>
    <!-- Custom fonts for this template-->
    <link rel="icon" href="../../assets/img/logo.png">
    <!-- Custom fonts for this template-->
    <link href="../../assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/font.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="../../assets/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../../assets/css/print.css" rel="stylesheet" media="print">
    <!-- end of header -->
    <div class="p-5">
        <div class="title mb-3 row text-center">
            <div class="col-1 "><img src="../../assets/img/logo.jpg" alt=""></div>
        </div>
        <div class=" mb-3">

            <?php
                $sql = "SELECT * from studentrecords where student_id = '$id'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $name = $row['name'];
                        $course = $row['course'];
                    }
                }
            ?>

                <h5 class="h3 mb-4 text-gray-800 text-center">Student Grade</h5>
                <label class="mr-4">Student ID: </label> <i class="text-dark font-weight-bold mr-5"><?php echo $id; ?></i><br>
                <label class="mr-4">Name: </label> <i class="text-dark font-weight-bold "><?php echo $name; ?></i> <br>
                <label class="mr-4">Course: </label> <i class="text-dark font-weight-bold text-uppercase"><?php echo $course; ?></i> <br>


              <?php include "../../studentgrading/_third.grading.php"; ?>
              <div class="mx-auto" style="width: 355px;">
              <p class="m-5 font-italic">This is an electronic copy of grades.</p>
              </div>
                <br>
                <a class="btn btn-danger" id="print-btn" href="../../student/third.student.php"><i class="fas fa-arrow-circle-left"></i></a>
                <button class="btn btn-danger" onclick="window.print();" id="print-btn"><i class="fas fa-print"></i></button>
          

        </div>
    </div>
<?php


} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
} ?>