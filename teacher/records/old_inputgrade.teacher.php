<?php
session_start();

if (isset($_SESSION['user_id'])) {
    $id = $_SESSION['user_id'];
    $sub = $_GET['sub'];

   

    include "../teacherlayout/head.tlayout.php"; 
    $sql2 = "SELECT * from subjects where description = '$sub'";
    $result2 = $conn->query($sql2);

    if ($result2->num_rows > 0) {
        while ($row2 = $result2->fetch_assoc()) {
            $subcode = $row2['subcode'];
        }
    }
    ?>
    <!-- content here -->
    <h5 class="title text-dark mb-3">Input Grade in <?php echo "(".$subcode.")-".$sub?></h5>
    <?php echo "<form action='../database/grade/subjectlist.db.php?sub=$sub' method='post'>"; ?>
    <div class="row mb-2">
        <div class="form-group col-2">
            <select name="term" class="form-control" required>
                <option value="">Term</option>
                <option value="prelims">Prelim</option>
                <option value="midterms">Midterm</option>
                <option value="finals">Final</option>
            </select>
        </div>
        <div class="form-group col">
            <input type="submit" value="Assess" name="submit" class="btn btn-primary">
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
            $sql = "SELECT * from studentsubs where subject = '$sub'";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $id = $row['student_id'];
                    $sql2 = "SELECT * from studentrecords where student_id = '$id' and course = '$_GET[course]'";
                    $result2 = $conn->query($sql2);

                    if ($result2->num_rows > 0) {
                        while ($row2 = $result2->fetch_assoc()) {
            ?>
                            <tr>
                                <td><?php echo $row2['student_id']; ?></td>
                                <td><?php echo $row2['name']; ?></td>
                                <td><?php echo $row2['course']; ?></td>

                                <td><input type='text' name="grade[]" class='form-control mb-2 mr-sm-2 mb-sm-0' autocomplete="off" required></td>
                                <input type="hidden" name="studentid[]" value="<?php echo $row2['student_id']; ?>" class="border-0 bg-transparent ">
                                <input type="hidden" name="subject[]" value="<?php echo $sub; ?>" class="border-0 bg-transparent ">
                                <input type="hidden" name="count" value="<?php echo $count; ?>" class="border-0 bg-transparent ">
                                <input type="hidden" name="course" value="<?php echo $_GET['course']; ?>" class="border-0 bg-transparent ">



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
    </form>
    
   
    <?php if (isset($_GET['error'])) { ?>
        <div class="alert alert-danger text-center">
            <?php echo $_GET['error']; ?>
        </div>
    <?php } elseif (isset($_GET['success'])) { ?> <div class="alert alert-success text-center">
             <?php echo $_GET['success']; ?>
        </div> <?php } ?>
    <!-- end of content here -->
<?php include "../teacherlayout/footer.tlayout.php";
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
}
?>