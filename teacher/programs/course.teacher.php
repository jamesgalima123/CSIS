<?php 
session_start();

if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];
                  
    include "../teacherlayout/head.tlayout.php"; ?>
       <!-- content here -->
      
      <center><div >
        <div class="modal-content w-50 ">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light">Choose Program</h5>
            </div>
            <!-- end of modal header -->
            <form action="../records/studentgrade.teacher.php" method="get">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                        <select name="course" id="c" class="form-control" required>
                            <option value="">Program</option>
                            <?php
                            include_once '../../database/dbconnection.db.php';

                            $sql = "SELECT * from course";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {

                                    echo "<option value='" . $row['description'] . "' class='text-uppercase'>" . $row['description'] . "</option>";
                                }
                            } else {
                                echo "<tr><td>No records</td></tr>";
                            }

                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="year" id="d" class="form-control" required>
                            <option value="">Year level</option>
                            <option value="first">first</option>
                            <option value="second">second</option>
                            <option value="third">third</option>
                            <option value="fourth">fourth</option>
                        </select>
                    </div>
                    <input type="hidden" name="sub" value="<?php echo $sub?>">
                    <!-- end student id -->      
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-outline-primary" type="submit">Go</button>
                </div>
                </form> 
                    <!-- end of modal footer -->
        </div>
    </div>
      
      </center>
     
    

       <!-- end of content here -->
       <?php include "../teacherlayout/footer.tlayout.php";
    }else{
        header("Location: ../../canossa/master.blade.php");
        exit();
   }
?>
