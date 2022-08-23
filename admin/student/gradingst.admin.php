<?php
session_start();
$page ="gsheet";
if (isset($_SESSION['username'])) {
    $year = $_GET['year'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    //$term = $_GET['term'];
    include_once '../adminlayout/head.admin.php' ;

    
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


    $sql2 = "SELECT * from gradingstatus";
    $result2 = $conn->query($sql2);
    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) { 
          
      $term = $row2['term'];
   
        }}

        $sq = "SELECT * from teacherrecords where teacher_id = '$id'";
    $resul = $conn->query($sq);

    if ($resul->num_rows > 0) {
        while ($row = $resul->fetch_assoc()) {
            $name = $row['name'];
        }
    }

        $zero = 0;
        // GETTING THE TOTAL OF reporting
$sql = "SELECT * from teacher_cs where teacher_id = '$id' and course = '$course' and term = '$term' and subject_code = '$subcode'";
$result = $conn->query($sql);
$tcs = 0; 
if ($result->num_rows > 0) {
while ($row = $result->fetch_assoc()) {    

        $tcs = $tcs + $row['item'];              
}
}

        // GETTING THE TOTAL OF reporting
        $sql = "SELECT * from teacher_reporting where teacher_id = '$id' and course = '$course' and term = '$term' and subject_code = '$subcode'";
        $result = $conn->query($sql);
        $trep = 0; 
        if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {    
                $trep = $trep + $row['item'];            
        }
        }

                // GETTING THE TOTAL OF reporting
$sql = "SELECT * from teacher_exam where teacher_id = '$id' and course = '$course' and term = '$term' and subject_code = '$subcode'";
$result = $conn->query($sql);
$tex = 0; 
if ($result->num_rows > 0) {
while ($row = $result->fetch_assoc()) {    
 
        $tex = $tex + $row['item']; 
                  
}
}

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


                // GETTING THE TOTAL OF reporting
                


if($term === "prelim"){
    $dis = "d-none";
}else{
    $dis = "d";
}




    ?>




<!-- content here -->

<?php 
if($trep == 0 && $tcs == 0 && $tex == 0){
    ?>
    <h1>No Record To Show</h1>
    
    <?php
    }else{
        ?>
        <h5 class="title text-dark mb-3"><?php echo $course?></h5>
        <h5 class="title text-dark mb-3"><?php echo $subcode." - ".$sub?></h5>
        <h5 class="title text-dark mb-3"><?php echo "Instructor: ".$name?></h5>
<div class="float-right m-1">
    <!-- <a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#AddCS"><i class="fas fa-plus"></i>Add
        Class Record</i></a> -->
        <a class="btn btn-sm btn-outline-primary" href="../../print/adminsheet.print.php?sub=<?php echo $sub;?>&course=<?php echo $course;?>&term=<?php echo $term;?>"><i class="fas fa-print"></i>Print
        Records</a>
</div>
<div class="table-responsive">
<table class="table table-bordered text-center" id="">
    <thead class="bg-primary text-light ">
        <tr>
            <th class="">Student ID</th>
            <th class="">Name</th>
            <th class="">Attendance</th>
            <th class="">10%</th>
            <th class="">Class Standing</th>
            <th class="">25%</th>
            <th class="">Reporting</th>
            <th class="">25%</th>
            <th class="">Exam</th>
            <th class="">40%</th>
            <th class="<?php echo $dis; ?>">Pre-Final</th>
            <th class="<?php echo $dis; ?>"><?php echo $th; ?></th>
            <th class="">Final Grade</th>
        </tr>
       
    </thead>

    <tbody>
    <tr>
                <td></td>
                <td></td>
                <td class="text-primary font-weight-bold font-italic">100</td>
                <td></td>
                <td class="text-primary font-weight-bold font-italic"><?php echo $tcs; ?></td>
                <td></td>
                <td class="text-primary font-weight-bold font-italic"><?php echo $trep; ?></td>
                <td></td>
                <td class="text-primary font-weight-bold font-italic"><?php echo $tex; ?></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
    </tr>

        <?php
       $sql = "SELECT *
            FROM studentrecords
            WHERE course = '$course' and student_id NOT IN (SELECT student_id FROM withdrawns) and year = '$year';";
            
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $sid = $row['student_id'];
                    $name =$row['name'];
                    $sql2 = "SELECT * from student_attendance where student_id = '$sid' and term = '$term' and subject_code = '$subcode'";
                    $result2 = $conn->query($sql2);
                    $attendance = 0;
?>
        <tr>
            <td><?php echo $sid; ?></td>
            <td><?php echo $name; ?></td>
            <td class = "p-0">

            <table style = "margin:0px; width: 100%; " class = "text-center">
                    <tr>
                        <?php
                            if ($result2->num_rows > 0) {
                                while ($row2 = $result2->fetch_assoc()) {    
                                    $score = $row2['score']; 

                                    $attendance = $score + $attendance;
                                    echo "<td> $score </td>"; 
                                }
                            }
                        ?>
                    </tr>
                </table>
            </td>

                    <td> 
                        <?php  $atotal = $attendance*.10; 
                        echo number_format($atotal, 1);
                        ?> 
                    </td>

                    <?php $classrecord = "SELECT * from student_cs where student_id = '$sid' and term = '$term' and subject_code = '$subcode'";
                    $resulte = $conn->query($classrecord);
                    $cs = 0;
                    ?> 
                    
                    
                    <td class = "p-0">

                        <table style = "margin:0px; width: 100%; " class = "text-center">
                            <tr>
                                <?php
                                    if ($resulte->num_rows > 0) {
                       
                                        while ($rowe = $resulte->fetch_assoc()) { 
                                            $scoree = $rowe['score']; 
                
                                            $cs = $scoree + $cs;
                                    echo "<td> $scoree </td>"; 
                                         }
                                    }?>
                            </tr>
                        </table>
                    </td>


                 <td> <?php  $cstotal = ($cs/$tcs*50+50)*.25;
                 echo number_format($cstotal, 1);?> </td>
                 <!-- reporting -->
                    <?php $report = "SELECT * from student_reporting where student_id = '$sid' and term = '$term' and subject_code = '$subcode'";
                    $resulte = $conn->query($report);
                    $rep = 0;
                    ?> 
                    
                                
                    <td class = "p-0">
                        <table style = "margin:0px; width: 100%; " class = "text-center">
                            <tr>
                                <?php
                                     if ($resulte->num_rows > 0) {
                                    
                                        while ($rowe = $resulte->fetch_assoc()) { 
                                            $scoree = $rowe['score']; 
                                        
                                            $rep = $scoree + $rep;
                                            echo "<td> $scoree </td>"; 
                                         }
                                    }
                                ?>
                            </tr>
                        </table>
                    </td>


                 <td> <?php  $reptotal = ($rep/$trep*50+50)*.25;
                 echo number_format($reptotal, 1); ?> </td>
<!-- exam -->
                <?php $exam = "SELECT * from student_exam where student_id = '$sid' and term = '$term' and subject_code = '$subcode'";
                    $resultr = $conn->query($exam);
                    $exam = 0;
                    ?>
                    
                    
                    <td class = "p-0">
                        <table style = "margin:0px; width: 100%; " class = "text-center">
                            <tr>
                            <?php
                                if ($resultr->num_rows > 0) {
                                
                                    while ($rowt = $resultr->fetch_assoc()) { 
                                        $scoree = $rowt['score']; 
                                        $exam = $scoree + $exam;
                                        echo "<td> $scoree </td>"; 
                                     }
                                }
                            ?>
                            </tr>
                        </table>
                    </td>

                         <td> <?php  $examtotal = ($exam/$tex*50+50)*.40;  
                            echo number_format($examtotal, 1);?> </td>  
    
                         <td> <?php  
                                    $prefinal = $atotal+$cstotal+$reptotal+$examtotal;
                            echo number_format($prefinal, 0); 
                         ?> </td>
                         <td class="<?php echo $dis; ?>"><?php
                            $prev = "SELECT * from $table where student_id = '$sid' and subject = '$sub'";
                            $res = $conn->query($prev);
                            if ($res->num_rows > 0) {
                            while ($row = $res->fetch_assoc()) {    
                                     echo $row['grade'];    
                                     $preg = $row['grade'];   
                                    }
                            }
                            ?></td>
                            <td class="<?php echo $dis; ?>">
                                <?php 
                                
                                $finalg = ($prefinal*.70)+($preg*.30);
                                echo number_format($finalg, 0);
                                ?>
                            </td>
                         <?php 
                        }
                    }?>     
           </tr>
    </tbody>
</table>
</div>
        <?php
    }
?>

<!-- end of content here -->
<?php include "../adminlayout/footer.admin.php";
} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
}
?>