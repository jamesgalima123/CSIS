<?php
session_start();
$page ="attendance";
if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];
    $course = $_GET['course'];
    $year = $_GET['year'];
    include "../teacherlayout/head.tlayout.php"; 

    $sql2 = "SELECT * from gradingstatus ";
$result2 = $conn->query($sql2);
if ($result2->num_rows > 0) {
    while ($row2 = $result2->fetch_assoc()) { 
      
  $term = $row2['term'];

    }}

    $sql2 = "SELECT * from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }
    ?>
<!-- content here -->


<style>
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>


    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit Record Attendace</h5>
                <button class="close text-light btn btn-sm" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->

                    <h5 class="title text-dark mb-3 d-none"><?php echo $_GET['stid'].", ".$sub.", ".$course?></h5>
                    <div class="table-responsive">
                        <table class="table" >
                            <thead>
                                <td class="d-none">ID</td>
                                <th>Attendance</th>
                                <th>Score</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                            <?php 
                            $stid = $_GET['stid']; 
                            $c = 1;
                            $sql2 = "SELECT * from student_attendance where subject_code = '$subcode' and student_id = '$stid' and teacher_id = '$id' and term = '$term' and course = '$course'";
                            $result2 = $conn->query($sql2);
                            if ($result2->num_rows > 0) {
                                while ($row2 = $result2->fetch_assoc()) {
                                    $score = $row2['score'];
                                    $sid = $row2['id'];

                            ?>
                                    <tr>
                                        <td class="d-none"><?php  echo $sid ?></td>
                                        <td><?php  echo "A". $c++ ?></td>
                                        <td><?php echo $score?></td>
                                        <td><a type="button" class="btn btn-outline-info m-1 btn-sm editbtn" >
                                        <i class="fas fa-edit"></i></a></td>
                                    </tr>
                            <?php
                             }
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>                    
                    </div> <!-- end of course selection -->

                    <!-- end of modal body -->

                    <!-- modal footer -->
                    <div class="modal-footer">
                      <?php echo  "<a class='btn btn-sm btn-outline-secondary' href='../records/attendancerecord.teacher.php?stid=&sub=$sub&course=$course&year=$year'>Cancel</a>"; ?>
                    </div>
                    <!-- end of modal footer -->
        </div>
    </div>

    <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel"></h5>
                <button class="close text-light closemodal" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" novalidate action="../../database/changescore/attendance.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                    <input type="hidden" class="form-control" name="sid" id="sid" autocomplete="off" >
                    <input type="hidden" name="sub" id="" class="form-control" value="<?php echo $sub; ?>">
                    <input type="hidden" name="subcode" id="" class="form-control" value="<?php echo $subcode; ?>">
                    <input type="hidden" name="tid" id="" class="form-control" value="<?php echo $id; ?>">
                    <input type="hidden" name="year" id="" class="form-control" value="<?php echo $year; ?>">
                    <input type="hidden" name="course" id="" class="form-control" value="<?php echo $_GET['course']; ?>">
                    <input type="hidden" name="term" id="" class="form-control" value="<?php echo $term; ?>">
                    <input type="hidden" name="stid" id="" class="form-control" value="<?php echo $_GET['stid']; ?>">
                    </div>
                    <!-- end student id -->

                    <div class="form-group">
                        <input type="text" class="form-control" name="name" id="name" autocomplete="off"  required>
                    </div>

                    <div class="form-group">
                    <input type="number" class="form-control" name="score" id="score" autocomplete="off">
                    </div>
                    
                    <!-- text box contact-->
            
                    <!-- end address -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary closemodal" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Save</button>
                </div>
                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>



<!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
} else {
    header("Location: ../../canossa/master.blade.php");
    exit();
}
?>
