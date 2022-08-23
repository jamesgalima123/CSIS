
<div style = "background:rgba(0,0,0,.5)" class="modal" id="editSubject" tabindex="-1" role="dialog" 
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <!-- modal header -->
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-light" id="exampleModalLabel">Edit Subject</h5>
                <button class="close text-light" type="button" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-window-close" aria-hidden="true"></i>
                </button>
            </div>
            <!-- end of modal header -->
            <form class="needs-validation" id="subjectUpdate" action = "../../database/editprofile/subject.db.php"  method="post" novalidate>
                <!-- modal body -->
                <div class="modal-body">
                <input type="text" class="form-control" name="id" id="id" autocomplete="off" hidden> 
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="code" id="subcode" autocomplete="off"
                            placeholder="Subject Code" required>
                    </div>
                    <!-- end student id -->
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" id="description" autocomplete="off"
                            placeholder="Subject Title" required>
                    </div>
                    <!-- end student id -->
                    <!-- text box student id -->
                    <div class="form-group">
                        <input type="number" class="form-control" id="units" name="units" autocomplete="off"
                            placeholder="Units" required>
                    </div>        
                    <!-- end of course selection -->
                </div>
                <!-- end of modal body -->

                <!-- modal footer -->
                <div class="modal-footer">
                    <button class="btn btn-sm btn-outline-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <button class="btn btn-sm btn-outline-primary" type="submit" onclick="document.getElementById('subjectUpdate').submit()">Update</button>
                </div>
                    <!-- end of modal footer -->
            </form>
        </div>
    </div>
</div>