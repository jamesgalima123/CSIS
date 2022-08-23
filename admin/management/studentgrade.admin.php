<?php
$page ="grade";
 $sql = "SELECT * from gradingstatus";
 $result = $conn->query($sql);

 if ($result->num_rows > 0) {
     while ($row = $result->fetch_assoc()) {
$term = $row['term'];
$stat = $row['status'];

     }
 }

?>
</style>
<div class="modal fade" id="StudentGrade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Student Grade</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form action="../student/Grade.admin.php" method="get">
                <!-- modal body -->
                <div class="modal-body ">

                <div class="form-group">
                    <select name="course" id="c" class="form-control m-1" required>
                            <option value="">Program</option>
                            <?php
                             
                          

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
                        <select name="sub" id="c" class="form-control m-1" required>
                            <option value="">Subject</option>
                            <?php
                             
                           

                            $sql = "SELECT * from subjects";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {

                                    echo "<option value='" . $row['description'] . "' class='text-uppercase'>".$row['subcode']."-".$row['description']."</option>";
                                }
                            } else {
                                echo "<tr><td>No records</td></tr>";
                            }

                            ?>
                        </select>
                        <select name="year" id="c" class="form-control m-1" required>
                            <option value="">Year level</option>
                            <option value="first">first</option>
                            <option value="second">second</option>
                            <option value="third">third</option>
                            <option value="fourth">fourth</option>
                        </select>
                    </div>
                    
                   
                  
                  
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Done</button>
                </div>

                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>