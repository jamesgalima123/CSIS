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
    
<form action="" method="POST"> 
<select name="year" id="">
<option value="1" focused>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
<button type="submit">ok</button>


<?php 

if($_POST['year'] == "1"){
    include "../studentgrading/_first.grading.php";
}elseif($_POST['year'] == "2"){
    include "../studentgrading/_second.grading.php";
}elseif($_POST['year'] == "3"){
    include "../studentgrading/_third.grading.php";
}elseif($_POST['year'] == "4"){
    include "../studentgrading/_forth.grading.php";
}else{
    ?>
    <h5>choose what year</h5>
    <?php
}


?>

    
</form> 


    <br>
    <br>
    <a class="btn btn-outline-primary" href="../print/gradeperyear/grade.print.php"><i class="fas fa-print"></i></a>

<?php include "../layout/footer.layout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>