<?php 
session_start();
$page ="subject";
if (isset($_SESSION['username'])) {

include_once '../adminlayout/head.admin.php' ?>
       


<nav class="navbar navbar-expand navbar-light topbar static-top ">
<!-- Topbar Search -->
<h1 class="h3 text-gray-800">Subject List</h1>
</nav>
<div class="float-right m-1">
<a class="btn btn-sm btn-outline-primary" data-toggle="modal" data-target="#AddsubjectModal"><i class="fas fa-plus"></i>Add Subject</a>
</div>
<div class="table-responsive">
<table class="table table-striped table-hover table-borderless" id="datatableid">
    <thead class="bg-primary text-light ">
        <tr>
            <th>Subject Code</th>
            <th>Subject Title</th>
            <th>Units</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
               <?php
                   

                    $sql = "SELECT * from sublists";
                    $result = $conn-> query($sql);
                   
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                            $del = "<a class='btn btn-outline-danger m-1 btn-sm' href='../../database/deleterecord/subject.db.php?subcode=$row[subject_code]'>
                            <i class='fas fa-minus'></i></a>";
                           // $edit = "<a class='btn btn-outline-info m-1 btn-sm' href='editsubject.admin.php?subcode=$row[subject_code]'>
                            //<i class='fas fa-edit'></i></a>";
                            $edit = "<a class='btn btn-sm btn-outline-info edit-subject' id='subjectEdit' onclick = 'editSubject(`" . $row['id']  . "`)'>
                                <i class='fas fa-edit'></i></i></a>";
                            echo "<tr><td>".$row['subject_code']."</td>
                            <td>".$row['description']."</td>
                            <td>".$row['units']."</td>
                            <td>".$del.$edit."</td> </tr>";
                        }
                    }
                    else{
                        echo "<tr><td>No records</td></tr>";
                    }
                    
                ?>
              
        
    </tbody>
</table>
</div>
<script>
    function editSubject(id){
        $.get('../../database/sublist',{
            id: id
        },function (data, status){
            try {
                let editSubject = $("#editSubject");
                let subject = JSON.parse(data)[0];
                $("#id").val(subject.id);
                $("#subcode").val(subject.subject_code);
                $("#description").val(subject.description);
                $("#units").val(subject.units);
                editSubject.show();
            } catch (error) {
                alert(error);
            }
        });
        
    }
    function closeEditSubject(){
        try {
            let editSubject = $("#editSubject");
            editSubject.hide();
        } catch (error) {
            alert(error);
        }
    }
</script>
<?php include "createsubject.admin.php" ?> 
<?php include "editsub.admin.php" ?> 


<?php include_once '../adminlayout/footer.admin.php';
 }else{
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>
                    
                    
                

