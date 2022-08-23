</div>
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->

</div>
<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
<!-- Logout Modal-->
<?php include_once "_logoutmodal.blade.php" ?>

<!-- Bootstrap core JavaScript-->

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<!-- Custom edit users account-->
<script src="../../assets/vendor/jquery/jquery.min.js"></script>

<script src="../../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Core plugin JavaScript-->
<script src="../../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->

<script src="../../assets/js/sb-admin-2.min.js"></script>

<script src="../../assets/js/datatable/datatable-jquery.js"></script>

<script src="../../assets/js/datatable/datatable-bootstrap.js"></script>

<script>

/** datatable modification */
    $(document).ready(function() {
        $('#datatableid').DataTable( {
        "paging":   true,
        "ordering": false,
        "info":     true
    } );
    });


    (function() {

      
    'use strict';
    window.addEventListener('load', function() {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();

  
//opening edit modal
$(document).ready(function(){
    $('.edit-user').each(function() {
      $(this).click(function(event){
        $('#userUpdate').attr("action", "../../database/changepass/user.db.php");
        $('#userid').val($(this).data('id'));
        $('#userrole').val($(this).data('role'));
        $('#userpassword').val($(this).data('password'));
      })
    })




    $('.edit-subject').each(function() {
      $(this).click(function(event){
        $('#subjectUpdate').attr("action", "../../database/editprofile/subject.db.php");
        $('#subcode').val($(this).data('subcode'));
        $('#units').val($(this).data('units'));
        $('#description').val($(this).data('description'));
        $('#id').val($(this).data('id'));
       
      })
    })


  });
  
  
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
  
});


$('#myAlert').on('closed.bs.alert', function () {
  // do something…

  tempAlert("close",5000);
})
</script>



<!-- end of content -->