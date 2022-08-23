<div class="modal fade" id="AddTeacherModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Add New Teacher</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" novalidate action="../../database/addrecord/registerteacher.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="teacherid" autocomplete="off" placeholder="Teacher Id" required>
                    </div>
                    <!-- end student id -->

                    <!-- text box first name -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" autocomplete="off" placeholder="Name" required>
                    </div>
                    <!-- end first name -->

                    <!-- selection for gender -->
                    <div class="form-group">
                        <select name="gender" id="gender" class="form-control" required>
                            <option selected disabled value="">Sex</option>
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                    <!-- end of selection gender -->

                    <!-- text box contact-->
                    <div class="form-group">
                        <input type="text" class="form-control" name="contact" autocomplete="off" placeholder="Cellphone #" required>
                    </div>
                    <!-- end of contact -->
                    <!-- text box address -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="address" autocomplete="off" placeholder="Address" required>
                    </div>
                    <!-- end address -->
                    <div class="form-group">
                        <select name="subject" id="subject" class="form-control" required>
                            <option selected disabled value=""> Subject </option>
                            <?php
                            include_once '../database/dbconnection.db.php';

                            $sql = "SELECT * from sublists";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {


                                    echo "<option value='" . $row['description'] . "'>Code-" 
                                    . $row['subject_code'] ." | Description-". $row['description'] 
                                    ." | Units-".$row['units']."</option>";
                                }
                            } else {
                                echo "<tr><td>No records</td></tr>";
                            }
                            
                            ?>
                        </select>
                    </div>
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Add</button>
                </div>
                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>