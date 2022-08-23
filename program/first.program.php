<hr class="sidebar-divider bg-info">
<div class="p-2 m-3">
    <h5 class="text-center bg-primary text-light">1st Year</h5>
    <div>
        <h5>1st Semester</h5>
        <table class="table">
            <thead class="">
                <tr>
                    <th>Subject Code</th>
                    <th>Subject Title</th>
                    <th>Units</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>

                <?php
                

                $sql = "SELECT * from programs where year = 'first' && sem = 'first' && course = '$_GET[des]'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $del = "<a class='btn btn-sm btn-outline-danger' href='../../database/deleterecord/program.db.php?subcode=$row[subject]&des=$_GET[des]'>
                            <i class='fas fa-user-minus'></i></a>";
                            $des = $row['subject'];
                            $sub = "SELECT * from sublists where  description = '$des'";
                            $res = $conn-> query($sub);
                            if($res-> num_rows > 0 ){
                                while($row = $res-> fetch_assoc()){
                                    echo "<tr>
                                    <td>".$row['subject_code']."</td>
                                    <td>".$row['description']."</td>
                                    <td>".$row['units']."</td>
                                    <td>".$del."</td></tr>";
                                }
                            }
                    }
                } else {
                    echo "<tr><td>No records</td></tr>";
                }

                ?>


            </tbody>
        </table>
        <div class="form-group">
            Select subject want to Add
            <select name="fyfssub" id="subject" class="form-control">
            <option selected disabled value="">Choose...</option>
                <?php

                $sql = "SELECT * from sublists where description != '$description'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {

                        echo "<option value='" . $row['description'] . "'>Subject Code-" 
                        . $row['subject_code'] ." | Description-". $row['description'] 
                        ." | Units-".$row['units']."</option>";
                    }
                } else {
                    echo "<tr><td>No records</td></tr>";
                }


                ?>
            </select>
        </div>
        <a class="btn btn-sm btn-outline-secondary" type="button" href="courselist.admin.php">Cancel</a>
        <button class="btn btn-sm btn-outline-primary" type="submit" name="fy-fs">Add</button>
    </div>
</div>
<hr class="sidebar-divider bg-info">
<!-- SECOND SEMESTER -->
<div class="p-2 m-3">
    <div>
        <h5>2nd Semester</h5>
        <table class="table">
            <thead class="">
                <tr>
                    <th>Subject Code</th>
                    <th>Subject Title</th>
                    <th>Units</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>


                <?php
             

                $sql = "SELECT * from programs where year = 'first' && sem = 'second' && course = '$_GET[des]'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $del = "<a class='btn btn-sm btn-outline-danger' href='../../database/deleterecord/program.db.php?subcode=$row[subject]&des=$_GET[des]'>
                            <i class='fas fa-user-minus'></i></a>";
                            $des = $row['subject'];
                            $sub = "SELECT * from sublists where  description = '$des'";
                            $res = $conn-> query($sub);
                            if($res-> num_rows > 0 ){
                                while($row = $res-> fetch_assoc()){
                                    echo "<tr>
                                    <td>".$row['subject_code']."</td>
                                    <td>".$row['description']."</td>
                                    <td>".$row['units']."</td>
                                    <td>".$del."</td></tr>";
                                }
                            }
                    
                    }
                } else {
                    echo "<tr><td>No records</td></tr>";
                }

                ?>


            </tbody>
        </table>
        <div class="form-group">
            Select subject want to Add
            <select name="sub" id="subject" class="form-control">
            <option selected disabled value="">Choose...</option>
                <?php
              

                $sql = "SELECT * from sublists where description != '$description'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {

                        echo "<option value='" . $row['description'] . "'>Subject Code-" 
                        . $row['subject_code'] ." | Description-". $row['description'] 
                        ." | Units-".$row['units']."</option>";
                    }
                } else {
                    echo "<tr><td>No records</td></tr>";
                }


                ?>
            </select>
        </div>
        <a class="btn btn-sm btn-outline-secondary" type="button" href="courselist.admin.php">Cancel</a>
        <button class="btn btn-sm btn-outline-primary" type="submit" name="fy-ss">Add</button>
    </div>
</div>
<hr class="sidebar-divider bg-info">
<!-- 2nd year -->