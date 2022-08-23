<?php
session_start();
$page ="assessgrade";
if (isset($_SESSION['username'])) {
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    $c = 0;
    $year = $_GET['year'];
 

    include "../adminlayout/head.admin.php"; 
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

    $sq = "SELECT * from teacherrecords where teacher_id = '$id'";
    $resul = $conn->query($sq);

    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $name = $row['name'];
        }
    }
    

    include "../../database/grade/computation.php"; 
    
    ?>




<!-- content here --><!-- content here -->
    <div class="float-right m-1">
        <a class="btn btn-sm btn-outline-primary" href="../../print/gradeassessadmin.print.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>&term=<?php echo $term ?>&year=<?php echo $year ?>"> <i class="fas fa-print"></i>PrintRecords</a>
    </div>
<h5 class="title text-dark mb-3">Assess Grade in <?php echo "".$subcode." - ".$sub?></h5>
<?php echo "<form action='../../database/grade/finalizegrade.db.php?sub=$sub&course=$course&year=$year' method='post'>"; ?>
<div class="row mb-2">

    <div class="form-group col">
        <input type="submit" value="Assess" name="submit" class="btn btn-sm btn-outline-primary">
        
    </div>

</div>


<table class="table">
    <thead class="bg-primary text-light ">
        <tr>
            <th class="">Student ID</th>
            <th class="">Name</th>
            <th>Course</th>
            <th class="">Grade</th>
        </tr>
    </thead>

    <tbody>

        <?php
$sql = "SELECT *
FROM studentsubs
WHERE subject = '$sub' and student_id NOT IN (SELECT student_id FROM withdrawns);";


            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $id = $row['student_id'];
                    $sql2 = "SELECT * from studentrecords where student_id = '$id' and course = '$course' and year = '$year' order by name";
                    $result2 = $conn->query($sql2);
                     $term;
                     if($term === "prelim"){
                        $table = "prelims";
                        $th = " ";
                    }elseif($term === "midterm"){
                        $table = "prelims";
                        $th = "Prelim";
                    }elseif($term === "final"){
                        $table = "midterms";
                        $th = "Midterm";
                    }
                    

                    if ($result2->num_rows > 0) {
                        while ($row2 = $result2->fetch_assoc()) {

                            $sql3 = "SELECT * from $table where student_id = '$id' and subject = '$sub' order by created_at ASC";
                            $result3 = $conn->query($sql3);
        //getting the recent grade
                            if ($result3->num_rows > 0) {
                                while ($row3 = $result3->fetch_assoc()) {
                                   $recentgrade = $row3['grade'];
                                }
                            }  
                            
// finalizing
                            if ($term == 'prelim'){
                              
                                $grade = ($csarray[$c] + $examarray[$c] + $reportarray[$c] + $satarray[$c]);

                                $finalgrade = $grade;

                            }else{
                                
                                $grade = ($csarray[$c] + $examarray[$c] + $reportarray[$c] + $satarray[$c]);

                                $finalgrade = ($recentgrade * .30 )+($grade * .70);


                            }

                            
            ?>
        <tr>
            <td><?php echo $row2['student_id']; ?></td>
            <td><?php echo $row2['name']; ?></td>
            <td><?php echo $row2['course']; ?></td>
            
        

            <td><input type='text' name="grade[]" class='form-control mb-2 mr-sm-2 mb-sm-0'
                    value="<?php  echo number_format($finalgrade, 0.0); ?>" autocomplete="off" required></td>
            <input type="hidden" name="studentid[]" value="<?php echo $row2['student_id']; ?>"
                class="border-0 bg-transparent ">
                <input type="hidden" name="course" value="<?php echo $course; ?>"
                class="border-0 bg-transparent ">
          



        </tr>
        <?php $c++;
                        }
                    }
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }

            ?>
    </tbody>
</table>
</form>


<?php if (isset($_GET['error'])) { ?>
<div class="alert alert-danger text-center">
    <?php echo $_GET['error']; ?>
</div>
<?php } elseif (isset($_GET['success'])) { ?> <div class="alert alert-success text-center">
    <?php echo $_GET['success']; ?>
</div> <?php } ?>
<!-- end of content here -->
<?php include "../adminlayout/footer.admin.php";
} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
}
?>