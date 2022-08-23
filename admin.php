<?php
$bg = array('image-1.JPG', 'image-2.JPG', 'image-3.JPG', 'image-4.JPG', 'image-5.JPG', 'image-6.JPG', 'image-7.JPG', 'image-8.JPG'); // array of filenames
$i = rand(0, count($bg) - 1); // generate random number size of the array
$selectedBg = "$bg[$i]"; // set variable equal to which random filename was chosen
?>
<html>

<head>
  <title>CSIS-Admin</title>
  <link rel="icon" href="assets/img/logo.PNG">
  <!-- Custom fonts for this template-->
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/font.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
  <style>
    body,
    #main::before {
      overflow: hidden;
      background: url("assets/img/for-sliders/<?php echo $selectedBg; ?>") 0/cover fixed;
    }

    #main {
      padding: 10px;
      max-width: 90%;
      min-width: 23em;
      background: rgba(255, 255, 255, 0.25) border-box;
      overflow: hidden;
      border-radius: .3em;
      box-shadow: 0 0 0 1px rgba(255, 255, 255, 0.3) inset, 0 0.5em 1em rgba(0, 0, 0, 0.6);
      text-shadow: 0 1px 1px rgba(255, 255, 255, 0.2);

    }

    #head {
      width: 100%;
      height: 100%;
      background: rgba(255, 255, 255, 0.50) border-box;
      overflow: visible;
      border-radius: .3em;
      position: absolute;
      z-index: -1; 
     
    }

    #main::before {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      margin: -30px;
      z-index: -1;
      -webkit-filter: blur(20px);
      filter: blur(50px);
    }

    p,
    ul {
      font-size: 25px;
      color: rgba(50, 50, 50, 1);
    }

    .card {
      background-color: rgba(0, 0, 0, .9) !important;
      z-index: 1;
      margin: 200 auto;
    }

    .social_icon span {
      font-size: 60px;
      margin-left: 10px;
    }

    .input-group-prepend span {
      width: 50px;
      background-color: #4e73df;
      color: black;
    }

    .input-group {
      margin-top: 20px;
    } 
  </style>


  <div id="head">
    <img src="assets/img/canossa.png" alt="" class="img-fluid">
  </div>

  <div class="d-flex justify-content-center align-items-center">
    <div class="card" id="main">
      <div class="card-head">
        <h3 class="text-primary">Sign In</h3>

        <hr class="sidebar-divider bg-light">
        <form action="database/login/adminlog.db.php" method="post">
          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text text-light"><i class="fas fa-user"></i></span>
            </div>
            <input type="text" class="form-control" name="username" placeholder="Username">
          </div>
          <div class="input-group form-group">
            <div class="input-group-prepend">
              <span class="input-group-text text-light"><i class="fas fa-key"></i></span>
            </div>
            <input type="password" class="form-control" name="pass" placeholder="Password">
          </div>
          <hr class="sidebar-divider bg-light">
          <div class="form-group">
            <input type="submit" value="Login" class="btn btn-primary float-right login_btn">
          </div>
        </form>
      </div>
      <?php if (isset($_GET['error'])) { ?>
        <div class="d-flex justify-content-center align-items-center">
          <nav class=" alert alert-danger "><?php echo $_GET['error']; ?></nav>
        </div>
      <?php } ?>
    </div>
