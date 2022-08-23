<?php
session_start();
if (isset($_SESSION['username'])) {
    include_once '../adminlayout/head.admin.php' ?>
    

<div class="container-fluid " style="width: 80%; color: black">
  <div class="row">
      <h2>Subjects</h2>
  </div>
  <div class="table-responsive">
    <table class="table table table-striped table-hover table-borderless">
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
            $id = $_GET['stid'];
                    $sql = "SELECT * from studentsubs where student_id = '$id'";
                    $result = $conn-> query($sql);
                    if($result-> num_rows > 0 ){
                        while($row = $result-> fetch_assoc()){
                           
                            $des = $row['subject'];
                            $sub = "SELECT * from sublists where  description = '$des'";
                            $res = $conn-> query($sub);
                            if($res-> num_rows > 0 ){
                                while($row = $res-> fetch_assoc()){
                                  $del = "<a class='btn btn-outline-danger m-1 btn-sm' href='../../database/deleterecord/irregularsubject.db.php?sub=$row[description] & stid=$id'>
                                  <i class='fas fa-user-minus'></i></a>";
                                    echo "<tr>
                                    <td>".$row['subject_code']."</td>
                                    <td>".$row['description']."</td>
                                    <td>".$row['units']."</td>
                                    <td>".$del."</td></tr>";
                                }
                            }

                        }
                    }
                
                ?>  
        </tbody>
    </table>
  </div>

  <form class="needs-validation mt-2" action="../../database/addrecord/addsub.irreg.db.php" method="post" novalidate>
    <input type="text" name="id" value="<?php echo $_GET['stid']; ?>" hidden>
    <div class="form-row">
        <div class="mt-3">
            <label>Semester</label>
            <select class="custom-select" name="semester"required>
              <option selected disabled value="">Choose...</option>
              <option>1nd Sem</option>
              <option>2nd Sem</option>
            </select>
        </div>
    </div>
    <div class="form-group inputs_div">
      <div class="form-row d-flex align-items-center">
        <div class="col mb-3">
          <label for="validationCustom03">Add Subject</label>
          <select name="code[]" id="c" class="form-control" required>
          <option selected disabled value="">Choose...</option>
          <?php 
          $sql = "SELECT * from sublists";
          $result = $conn->query($sql);
          if ($result->num_rows > 0) {
              while ($row = $result->fetch_assoc()) { ?>
             
                <option value="<?php echo $row['description'] ?> ">
                 Code-<?php echo $row['subject_code'] ?> |
                 Description-<?php echo $row['description'] ?> |
                 Units-<?php echo $row['units'] ?>
                </option>
             <?php  }
          }
          ?>
      </select>
       <input type="text" name="id" value="<?php echo $_GET['stid']?>" hidden>
        </div>
          <i class="fas fa-plus-square mr-2 mt-3 text-success addMore" style="font-size: 2rem"></i>
          <i class="fas fa-minus-square mt-3 text-danger" style="font-size: 2rem"></i>
      </div>
    </div>
    <button class="btn btn-sm btn-outline-primary mt-2" type="submit">Submit</button>
  </form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    $(this).on("click", ".addMore", function(){var html = '<div class="form-row d-flex align-items-center"><div class="col mb-3"><label for="validationCustom03">Add Subject</label><select name="code[]" id="c" class="form-control" required> <option selected disabled value="">Choose...</option><?php $sql = "SELECT * from sublists";$result = $conn->query($sql);if ($result->num_rows > 0) {while ($row = $result->fetch_assoc()) { ?><option value="<?php echo $row['description'] ?> ">Code-<?php echo $row['subject_code'] ?> |Description-<?php echo $row['description'] ?> |Units-<?php echo $row['units'] ?></option> <?php  }}?></select>  </div>    <i class="fas fa-plus-square mr-2 mt-3 text-success addMore" style="font-size: 2rem"></i>    <i class="fas fa-minus-square mt-3 text-danger remove" style="font-size: 2rem"></i></div>'
      $('.inputs_div').append(html);
    // console.log('hello');
    });

    $(this).on("click", ".remove", function(){
      var target_input = $(this).parent();
        target_input.remove();
    });
  });
</script>


<?php include_once '../adminlayout/footer.admin.php';
} else {
    header("Location: ../canossa/master.blade.php");
    exit();
} ?>