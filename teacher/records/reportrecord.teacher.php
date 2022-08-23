<?php
session_start();
$page ="rep";
if (isset($_SESSION['user_id'])) {
    $uid = $_SESSION['user_id'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    $year = $_GET['year'];

    include "../teacherlayout/head.tlayout.php"; 

    
    $sql2 = "SELECT * from subjects where description = 'The Contemporary World'";
    $result2 = $conn->query($sql2);
    echo $sub;
    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }

    $sql2 = "SELECT * from gradingstatus ";
    $result2 = $conn->query($sql2);
    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) { 
          
      $term = $row2['term'];
    
        }}
    ?>
<!-- content here -->


</style>
<h5 class="title text-dark mb-3">Reporting Record in <?php echo "(".$subcode.")-".$sub?></h5>
<div class="float-right m-1">
    <a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#Addreport"><i class="fas fa-plus"></i>Add
        Class Record</i></a>
</div>
<p><?php echo $course ?></p>
<div class="table-responsive">
<table class="table table-bordered text-center" id="datatableid">
    <thead class="bg-primary text-light ">
        <tr>
            <th class="">Student ID</th>
            <th class="">Name</th>
            <th class="">Year</th>
            <th class="">Score(s)</th>
            <th class="">Action</th>
        </tr>
    </thead>

    <tbody>

    <tr>
                <td></td>
                <td></td>
                <td></td>
                <td class ="p-0">
                        <table style = "margin:0px; width: 100%;" class = "text-center">
                <tr> 
                    <?php
                $sql = "SELECT * from teacher_reporting where teacher_id = '$tid' and term = '$term' and subject_code = '$subcode'";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {    
                            $item = $row['item']; 
                    echo "<td id = \"border\"> $item </td>"; 
                        }
                    }
                   
            ?>
            </tr>
                </table>
            </td>
            <td></td>  
                
    </tr>

        <?php
           $q = "SELECT *
           FROM studentsubs
           WHERE subject = '$sub' and student_id NOT IN (SELECT student_id FROM withdrawns);";
           $res = $conn->query($q);
           if($res->num_rows > 0){
               while($row = $res->fetch_assoc()){
                   $id = $row['student_id'];
                   $sql = "SELECT *
           FROM studentrecords
           WHERE course = '$course' and student_id = '$id' and year = '$year';";
           $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $sid = $row['student_id'];
                    $name =$row['name'];
                    $yearlevel =$row['year'];
                    $sql2 = "SELECT * from student_reporting where student_id = '$sid' and term = '$term' and subject_code = '$subcode'";
                    $result2 = $conn->query($sql2);
?>
        <tr>
            <td><?php echo $sid; ?></td>
            <td><?php echo $name; ?></td>
            <td><?php echo $yearlevel; ?></td>

            <td class ="p-0">
                        <table style = "margin:0px; width: 100%;" class = "text-center">
                <tr> 
            <?php
                    if ($result2->num_rows > 0) {
                        while ($row2 = $result2->fetch_assoc()) {    
                            $score = $row2['score']; 
                    echo "<td id = \"border\"> $score </td>"; 
                        }
                    }
                   
            ?>
            </tr>
                </table>
            </td>

            <?php

                $edit = "<a class='btn btn-sm btn-outline-info' href='../edit/reportrecord.teacher.php?stid=$row[student_id]&sub=$sub&course=$course&year=$year'>
                    <i class='fas fa-edit'></i></a>";

                echo "<td>" .$edit. "</td></tr>";
                    }
                    }
                }
            }

            ?>


           </tr>
    </tbody>
</table>
</div>
<!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
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


<!--  modal for record -->
<style>
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>

<div class="modal fade" id="Addreport" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Add New Record For Reporting</h5>
                <button class="close text-light btn btn-sm" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" action="../../database/grade/reporting.db.php" method="post" novalidate>
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <a href="">Enter the Highest Point Can Get</a>
                    <div class="form-group d-flex ">
                        <label for="studentid" class="p-1 m-1">Subject </label>
                        <input type="text" class="form-control m-1" style="width: 30%;" value="<?php echo $sub; ?>"
                            name="studentid" autocomplete="off" disabled>
                        <label for="studentid" class="p-1 m-1">Total Items: </label>
                        <input type="number" class="form-control m-1" style="width: 10%; " name="item"
                            autocomplete="off" required>
                    </div>

                    <hr class="divider">

                    <input type="hidden" name="sub" id="" class="form-control" value="<?php echo $sub; ?>">
                    <input type="hidden" name="year" id="" class="form-control" value="<?php echo $year; ?>">
                    <input type="hidden" name="uid" id="" class="form-control" value="<?php echo $uid; ?>">
                    <input type="hidden" name="tid" id="" class="form-control" value="<?php echo $id; ?>">
                    <input type="hidden" name="course" id="" class="form-control"
                        value="<?php echo $_GET['course']; ?>">


                    <div class="table-responsive">
                        <table class="table" id="datatableid">
                            <thead class="bg-primary text-light ">
                                <tr>
                                    <th class="">Student ID</th>
                                    <th class="">Name</th>
                                    <th class="">Score</th>
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
                    $sid = $row['student_id'];
                    $sql2 = "SELECT * from studentrecords where student_id = '$sid' and course = '$_GET[course]' and year = '$year'";
                    $result2 = $conn->query($sql2);

                    if ($result2->num_rows > 0) {
                        while ($row2 = $result2->fetch_assoc()) {
                            
            ?>
                                <tr>
                                    <td><?php echo $row2['student_id']; ?></td>
                                    <td><?php echo $row2['name']; ?></td>
                                    <td><input type="number" name="score[]" id="" class="form-control" required></td>
                                    <input type="hidden" name="id[]" id="" class="form-control"
                                        value="<?php echo $row2['student_id']; ?>">

                                </tr>
                                <?php
                        }
                    }
                }
            } else {
                echo "<tr><td>No records</td></tr>";
            }

            ?>
                            </tbody>
                        </table>
                    </div> <!-- end of course selection -->

                    <!-- end of modal body -->

                    <!-- modal footer -->
                    <div class="modal-footer">
                        <button class="btn btn-sm btn-outline-secondary" type="button"
                            data-dismiss="modal">Cancel</button>
                        <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Add</button>
                    </div>
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>