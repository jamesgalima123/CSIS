
<div class="modal" id="editStudent" tabindex="-1" role="dialog" aria-hidden="true" style = "background:rgba(0,0,0,0.5);">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit Student Record</h5>
                <button onclick = "closeEditStudent()" class="close text-light btn btn-sm" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" action = "../../database/editprofile/student.db.php" id="studentUpdate"  method="post" novalidate>
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group d-flex" >
                        <label for="studentid" style="width: 20%; padding:1px">Student ID</label>
                        <input type="text" class="form-control" name="studentid" id="studentid" autocomplete="off"  required>
                        <input type="text" class="form-control" name="id" autocomplete="off" id="id" hidden> 
                    </div>
                    
                    <div class="form-group d-flex" >
                        <label for="name" style="width: 20%;" class="m-1">Student Name</label>
                            <input type="text" class="form-control m-1" name="name" id="name" autocomplete="off" required>
                    </div>
                    <!-- end student id -->

                    <!-- selection for gender -->
                    <div class="form-group d-flex">
                        <label for="cellphone" style="width: 40%; padding:1px">Contact
                            <input type="tel" class="form-control" name="contact" id="cellphone" autocomplete="off" pattern="[0-9]{11}" required>
                        </label>

                        <label for="sex" style="width: 20%; padding:1px">Gender
                            <select name="gender" id="sex" class="form-control" required>
                            <option selected disabled value="">Choose...</option>
                                <option value="male">M</option>
                                <option value="female">F</option>
                            </select>
                        </label>

                        <label for="bday" style="width: 40%; padding:1px">Birthdate
                            <input type="date" class="form-control" name="bday" id="bday" autocomplete="off" required>
                        </label>
                    </div>
                    

                    <!-- text box contact-->
                    <div class="form-group d-flex">
                        <label for="bplace" style="width: 100%; padding:1px">Birthplace
                            <textarea type="text" class="form-control w-100" name="bplace" id="bplace" autocomplete="off" required></textarea>
                        </label>

                       
                    </div>
                    <!-- text box address -->
                    <div class="form-group">
                        <label for="address" style="width: 100%; padding:1px">Address
                            <textarea type="text" class="form-control" name="address" id="address" autocomplete="off" required></textarea>
                        </label>
                    </div>
                    <!-- end address -->
                    <!-- selection of course -->
                    <div class="form-group d-flex">
                       <label for="course" style="width: 70%; padding:1px"> Program
                        <select name="course" id="course" class="form-control" required>
                        <option selected disabled value="">Choose...</option>
                                <?php
                                include_once '../../database/dbconnection.db.php';

                                $sql = "SELECT * from course";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    while ($row = $result->fetch_assoc()) {

                                        echo "<option value='" . $row['description'] . "'>" . $row['description'] . "</option>";
                                    }
                                } else {
                                    echo "<tr><td>No records</td></tr>";
                                }
                                ?>
                            </select>
                        </label>
                        
                        <label for="year" style="width: 20%; padding:1px">Year Level
                        <select name="year" id="year" class="form-control" required>
                        <option selected disabled value="">Choose...</option>
                                <option value="first">1st</option>
                                <option value="second">2nd</option>
                                <option value="third">3rd</option>
                                <option value="fourth">4th</option>
                            </select>
                        </label>

                        <label for="status" style="width: 30%; padding:1px">Status
                            <select name="status" id="status" class="form-control" required>
                            <option selected disabled value="">Choose...</option>
                                <option value="regular">Regular</option>
                                <option value="irregular">Irregular</option>
                            </select>
                        </label>
                    </div>
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" onclick = "closeEditStudent()">Cancel</button>
                    
                    <button class="btn btn-sm btn-outline-primary" type="submit" onclick="document.getElementById('studentUpdate').submit()">Update</button>
                </div>
                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>
