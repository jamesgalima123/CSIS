<?php
session_start();
$page ="grade";
if (isset($_SESSION['username'])) {
    $year = $_GET['year'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    // $term = $_GET['term'];
    include_once '../adminlayout/head.admin.php';

    
    $sql2 = "SELECT * from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }

    $sql2 = "SELECT teacher_id from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $id = $row2['teacher_id'];
        }
    }

    $sql2 = "SELECT * from gradingstatus ";
    $result2 = $conn->query($sql2);
    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) { 
          
      $term = $row2['term'];
 
        }
    }

    $sq = "SELECT * from teacherrecords where teacher_id = '$id'";
    $resul = $conn->query($sq);

    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $name = $row['name'];
        }
    }
    ?>
    <!-- content here -->
    <div class="float-right m-1">
        <a class="btn btn-sm btn-outline-primary" href="../../print/gradesadmin.print.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>&year=<?php echo $year ?>"> <i class="fas fa-print"></i>PrintRecords</a>
</div>
    <h5 class="title text-dark mb-3"> Grade Summary for <?php echo " ".$subcode." - ".$sub?></h5>
    <h5 class="title text-dark mb-3"><?php echo $course?></h5>
    <h5 class="title text-dark mb-3"><?php echo "Instructor: ".$name?></h5>
    
   
    <table class="table" id="studentlist">
        <thead class="bg-primary text-light" >
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th >Prelims</th>
                <th >Midterms</th>
                <th >Finals</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include_once '../../database/dbconnection.db.php';
            $sub = $_GET['sub'];
            $course = $_GET['course'];
            $sql = "SELECT *
            FROM studentrecords
            WHERE course = '$course' and student_id NOT IN (SELECT student_id FROM withdrawns) and year='$year';";
            $result = $conn-> query($sql);
            if($result-> num_rows > 0 ){
                while($row = $result-> fetch_assoc()){
                    $id = $row['student_id'];
                    $name = $row['name'];
                    
                    echo "<tr><td>".$id."</td>
                            <td>".$row['name']."</td>";
                            $sql2 = "SELECT * from prelims where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No record</td>";
                            }
                            $sql2 = "SELECT * from midterms where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No record</td>";
                            }
                            $sql2 = "SELECT * from finals where subject = '$sub' and student_id = '$id'";
                            $result2 = $conn-> query($sql2);
                            if($result2-> num_rows > 0 ){
                                while($row2 = $result2-> fetch_assoc()){
                                    echo "<td>".$row2['grade']."</td>";
                                           
                                }
                            }else{
                                echo "<td>No record</td>";
                            }
                           
                }
            }
            else{
                echo "<tr><td>No record</td></tr>";
            }
            ?>
        </tbody>
    </table>
   
    
   
    <?php if (isset($_GET['error'])) { ?>
        <div class="alert alert-danger text-center">
            <?php echo $_GET['error']; ?>
        </div>
    <?php } elseif (isset($_GET['success'])) { ?> <div class="alert alert-success text-center">
             <?php echo $_GET['success']; ?>
        </div> <?php } ?>

    </form>






<!-- content here -->

<!-- end of content here -->
<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
}
?>


<!-- 
*
*
*
*
*
 -->
