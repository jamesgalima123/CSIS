<?php
                    include_once '../database/dbconnection.db.php';

                    if ($_POST['filter'] == "all"){
                        $sql2 = "SELECT *
                   FROM studentrecords
                   WHERE student_id NOT IN (SELECT student_id FROM withdrawns);";
                        $result2 = $conn-> query($sql2);

                        if($result2-> num_rows > 0 ){
                            while($row2 = $result2-> fetch_assoc()){
                       
                        echo "<tr><td>".$row2['student_id']."</td>
                        <td>".$row2['name']."</td>
                        <td>".$row2['gender']."</td>
                        <td>".$row2['cellphone']."</td>
                        <td>".$row2['course']."</td>
                        <td>".$row2['address']."</td>
                        </tr>";
                            }
                        }

                    }else{

                        $sql2 = "SELECT *
                   FROM studentrecords
                   WHERE course = '$_POST[filter]' and student_id NOT IN (SELECT student_id FROM withdrawns);";

                        
                        $result2 = $conn-> query($sql2);

                        if($result2-> num_rows > 0 ){
                            while($row2 = $result2-> fetch_assoc()){
                       
                        echo "<tr><td>".$row2['student_id']."</td>
                        <td>".$row2['name']."</td>
                        <td>".$row2['gender']."</td>
                        <td>".$row2['cellphone']."</td>
                        <td>".$row2['course']."</td>
                        <td>".$row2['address']."</td>
                        </tr>";
                            }
                        }

                    }
                           
                   
                    
                ?>