<div class="modal fade" id="editUser" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
        <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Update Employee</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
          <div class="modal-body">
              <form class="row g-3" method="POST" id="employeeUpdate"> 
                <div class="col-md-4">
            <label for="employeeid" class="form-label">Employee I.D</label>
          </div>
        <div class="col-md-8">
            <input type="text" name="employee_id" class="form-control" id="employeeid">
          </div>
          <div class="col-md-8">
            <label for="name" class="form-label">Name</label>
            <input type="text" name="name" class="form-control" id="employeename">
          </div>
          <div class="col-md-4">
          <label for="gender"  class="form-label">Gender</label>
            <select id="employeegender" name="gender" class="form-select">
              <option value="Male" selected>Male</option>
              <option value="Female" >Female</option>
            </select>
          </div>
          <div class="col-md-8">
            <label for="email" class="form-label">Email</label>
            <input type="email" name="email" class="form-control" id="employeeemail">
          </div>
          <div class="col-md-4">
            <label for="Mobile" class="form-label">Mobile number</label>
            <input type="text" name="mobile_number" class="form-control" id="employeemobile">
          </div>
          
          <div class="col-6">
            <label for="inputdob" class="form-label">Date of Birth</label>
            <input type="date" name="dob" class="form-control" id="employeedob" >
          </div>
         
          
          <div class="col-md-6">
            <label for="nationality" class="form-label">Nationality</label>
            <input type="text" name="nationality" class="form-control" id="employeenationality">
          </div>
              </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="document.getElementById('employeeUpdate').submit()">Update</button>
          </div>
        </div>
      </div>
    </div>




    <script>
  $(document).ready(function(){
    $('.delete-position').each(function() {
      $(this).click(function(event){
        $('#deleteForm').attr("action", "/position/delete/"+$(this).data('positionid')+"")
      })
    })
    $('.edit-employee').each(function() {
      $(this).click(function(event){
        $('#employeeUpdate').attr("action", "/employee/update/"+$(this).data('employee_id')+"");
        $('#employeeid').val($(this).data('employeeid'));
        $('#employeename').val($(this).data('name'));
        $('#employeegender').val($(this).data('gender'));
        $('#employeedob').val($(this).data('dob'));
        $('#employeenationality').val($(this).data('nationality'));
        $('#employeeemail').val($(this).data('email'));
        $('#employeemobile').val($(this).data('mobile'));
      })
    })
  });





  <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit User Password</h5>
                <button class="close text-light closemodal" type="button" data-dismiss="modal" aria-label="Close">
                    <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" novalidate action="../../database/changepass/user.db.php" method="post">
                <!-- modal body -->
                <div class="modal-body">
                    <!-- text box student id -->
                    <div class="form-group">
                    <input type="text" class="form-control" name="userid" id="userid" autocomplete="off" placeholder="User id">
                    </div>
                    <!-- end student id -->

                    <div class="form-group">
                        <input type="text" class="form-control" name="role" id="role" autocomplete="off" placeholder="Role" disabled required>
                    </div>

                    <!-- text box contact-->
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" id="password" autocomplete="off" placeholder="Password" required>
                    </div>
            
                    <!-- end address -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary closemodal" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" name="ok">Save</button>
                </div>
                <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>