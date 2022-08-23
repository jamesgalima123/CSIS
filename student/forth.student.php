<?php
session_start();
$page ="grade";
if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    include "../layout/head.layout.php";
    include_once '../database/dbconnection.db.php';

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


<?php 

    include "../studentgrading/_forth.grading.php";
    ?>



    <br>
    <br>
    <a class="btn btn-primary" href="../print/gradeperyear/_forth.print.php"><i class="fas fa-print"></i></a>

<?php include "../layout/footer.layout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>