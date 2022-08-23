<div class="p-2 m-3">
    <h5 class="text-center bg-primary text-light">2nd Year</h5>
    <div>
        <h5>1st Semester</h5>
        <table border="1" class="text-center w-100">
        <thead>
            <tr>
                <th rowspan="2">Subject</th>
                <th colspan="3">Term Rating</th>
                <th rowspan="2">Grade <br> Result</th>
            </tr>
            <tr>
                <th>Prelim</th>
                <th>Midterm</th>
                <th>Final</th>
            </tr>
        </thead>
        <tbody>
            <?php

        $prod = "SELECT * from programs where year = 'second' and sem = 'first' and course = '$course'";
        $result = $conn->query($prod);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $subject = $row['subject'];

                 $s = "SELECT * from studentsubs where student_id = '$id' and subject = '$subject'";
            $res = $conn->query($s);
            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {
                    $sub = $row['subject'];
                    echo "<tr><td>  $sub </td>";

                    $sq = "SELECT * from prelims where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            $sub = $row['subject'];
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                           
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                    }
                    $sq = "SELECT * from midterms where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                           
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                    }
                    $sq = "SELECT * from finals where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                            if($row['grade'] >= 75){
                                echo "<td>  Passed </td>";
                            }
                            else{
                                echo "<td>  Failed </td>";
                            }
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                       
                       
                            echo "<td> can't tell </td>";
                       
                    }
                }
            }
            }
        }

            
            
            ?>
        </tbody>
    </table>
        
        
    </div>
</div>
<hr class="sidebar-divider bg-info">
<!-- SECOND SEMESTER -->
<div class="p-2 m-3">
    <div>
        <h5>2nd Semester</h5>
        <table border="1" class="text-center w-100">
        <thead>
            <tr>
                <th rowspan="2">Subject</th>
                <th colspan="3">Term Rating</th>
                <th rowspan="2">Grade <br> Result</th>
            </tr>
            <tr>
                <th>Prelim</th>
                <th>Midterm</th>
                <th>Final</th>
            </tr>
        </thead>
        <tbody>
            <?php

        $prod = "SELECT * from programs where year = 'second' and sem = 'second' and course = '$course'";
        $result = $conn->query($prod);
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $subject = $row['subject'];

                 $s = "SELECT * from studentsubs where student_id = '$id' and subject = '$subject'";
            $res = $conn->query($s);
            if ($res->num_rows > 0) {
                while ($row = $res->fetch_assoc()) {
                    $sub = $row['subject'];
                    echo "<tr><td>  $sub </td>";

                    $sq = "SELECT * from prelims where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            $sub = $row['subject'];
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                           
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                    }
                    $sq = "SELECT * from midterms where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                           
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                    }
                    $sq = "SELECT * from finals where subject = '$sub' and student_id = '$id'";
                    $resu = $conn->query($sq);

                    if ($resu->num_rows > 0) {
                        while ($row = $resu->fetch_assoc()) {
                            
                            if($row['grade'] >=85){
                                echo "<td class='text-success'>  $row[grade] </td>";
                            }else if($row['grade'] >= 75){
                                echo "<td class='text-warning'>  $row[grade] </td>";
                            }else{
                                echo "<td class='text-danger'>  $row[grade] </td>";
                            }
                            if($row['grade'] >= 75){
                                echo "<td>  Passed </td>";
                            }
                            else{
                                echo "<td>  Failed </td>";
                            }
                        }
                    }else{
                        echo "<td class='text-danger'>  no grade </td>";
                       
                       
                            echo "<td> can't tell </td>";
                       
                    }
                }
            }
            }
        }

            
            
            ?>
        </tbody>
    </table>
    </div>
</div>


<!-- asdasdasd -->
