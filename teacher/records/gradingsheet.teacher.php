<?php
session_start();
$page ="gradesummary";
if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    $year = $_GET['level'];
    include "../teacherlayout/head.tlayout.php"; 
    $sql2 = "SELECT * from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }?>
    <!-- content here -->
    <div class="float-right m-1">
        <a class="btn btn-sm btn-outline-primary" href="../../print/gradesummary.print.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>"> <i class="fas fa-print"></i>PrintRecords</a>
</div>
    <h5 class="title text-dark mb-3"> Grade Summary for <?php echo " ".$subcode." ".$sub?></h5>
    <p><?php echo $course ?></p>
   
    <table class="table" id="studentlist">
        <thead class="bg-primary text-light" >
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Year</th>
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
            WHERE course = '$course' and student_id NOT IN (SELECT student_id FROM withdrawns) and year = '$year';";
            $result = $conn-> query($sql);
            if($result-> num_rows > 0 ){
                while($row = $result-> fetch_assoc()){
                    $id = $row['student_id'];
                    $name = $row['name'];
                    
                    echo "<tr><td>".$id."</td>
                            <td>".$row['name']."</td> 
                            <td>".$row['year']."</td>";
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
    <!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
}
?>