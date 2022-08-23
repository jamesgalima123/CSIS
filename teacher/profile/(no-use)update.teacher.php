<?php
session_start();

if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];

    include "../teacherlayout/head.tlayout.php"; ?>
    <!-- content here -->

        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header" style="background-color: #c6eff5"> 
                <h5 class="modal-title">Grade of student</h5>
            </div>
            <!-- end of modal header -->
            <form action="../database/grade/edit.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="row">
                    <div class="form-group col">
                    <label>Student Name</label>
                        <input type="text" class="form-control " name="student id" value="<?php echo $_GET['name'] ?>" disabled>
                    </div>
                    <div class="form-group col">
                    <label>Prelims</label>
                    <?php 
                             $student = $_GET['id'];
                             $course = $_GET['course'];

                         $sql = "SELECT * from prelims where student_id = '$student' and subject = '$sub'";
                         $result = $conn-> query($sql);
                        
                         if($result-> num_rows > 0 ){
                             while($row = $result-> fetch_assoc()){
                                 ?>
                                    <input type="text" class="form-control " name="pre" value="<?php echo $row['grade'] ?>">
                                 <?php
                                 
                             }
                         }
                        ?>
                        
                    </div>
                    <div class="form-group col">
                    <label>Midterms</label>
                    <?php 
                             $student = $_GET['id'];

                         $sql = "SELECT * from midterms where student_id = '$student' and subject = '$sub'";
                         $result = $conn-> query($sql);
                        
                         if($result-> num_rows > 0 ){
                             while($row = $result-> fetch_assoc()){
                                 ?>
                                    <input type="text" class="form-control " name="mid" value="<?php echo $row['grade'] ?>">
                                 <?php
                                 
                             }
                         }
                        ?>
                        
                    </div>
                    <div class="form-group col">
                    <label>Finals</label>
                    <?php 
                             $student = $_GET['id'];

                         $sql = "SELECT * from finals where student_id = '$student' and subject = '$sub'";
                         $result = $conn-> query($sql);
                        
                         if($result-> num_rows > 0 ){
                             while($row = $result-> fetch_assoc()){
                                 ?>
                                    <input type="text" class="form-control " name="fin" value="<?php echo $row['grade'] ?>">
                                 <?php
                                 
                             }
                         }
                        ?>
                      
                    </div>
                    </div>
                    <!-- end student id -->      
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->
                <input type="hidden" class="form-control " name="subject" value="<?php echo $sub ?>">
                <input type="hidden" class="form-control " name="student" value="<?php echo $student ?>">
                <input type="hidden" class="form-control " name="course" value="<?php echo $course ?>">

                

                <!-- modal footer -->
                <div class="modal-footer">
                 <a href="gradingsheet.teacher.php?sub=<?php echo $sub?>&course=<?php echo $course?>" class="btn btn-outline-secondary" type="button" data-dismiss="modal">Cancel</a>
                    <button class="btn btn-outline-success" type="submit" name="ok">Save</button>
                </div>
               
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>



    <!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>