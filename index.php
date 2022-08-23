<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
 
    <title>CSIS</title>
<link rel="icon" href="assets/img/logo.png">

    <!-- Scripts -->
    <script  src="assets/js/app.js" defer></script>
    
   

   

    <!-- Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Styles -->
    <link href="assets/css/app.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/orbit-css/orbit.css" rel="stylesheet" >
    <link href="assets/css/sb-admin-css/sb-admin-2.min.css" rel="stylesheet">

    <style>
        *{
            font-family: 'Poppins', sans-serif;
        }
    </style>
    
</head>
<body>

  <main>
  <div class="container-fluid p-0 m-0" style="height: 100vh;">
   <div class="row w-100 d-flex p-0 m-0" style="height: 100vh;">
      <div class="container is-dektop-only m-0 p-2" 
      style="
        position: fixed;
        top: 0; 
        right: 0; 
        z-index: 12; 
        max-width: 30%; 
        height: 100vh;
        background-color: white;
        background: linear-gradient(
              to right bottom,
            rgba(255, 255, 255, 0.7),
            rgba(255, 255, 255, 0.3)
            );
        backdrop-filter: blur(1rem);
        color: black;
      ">
        <div class="container d-flex flex-column justify-content-center align-items-center h-100">
          <div class="container d-flex align-items-center p-2 header">
            <img src="assets/img/logo.png" alt="" height="80" width="80">
            <div class="container w-100">
                <h4>Canossa College</h4>
                <h5>San Pablo</h5>
            </div>
          </div>

          <div class="container d-flex flex-column align-items-center p-2">
            <?php include "canossa/login.canossa.php" ?>
          </div>

          <div class="rowd-flex align-items-center justify-content-center p-2">
            <p class="text-center">By using this service, you understood and agree to the Canossa College <a href="#">Terms of Use</a> and <a href="#">Privacy Statement</a></p>
          </div>
        </div>
      </div>

      <div class="container is-tablet-only m-0 p-2" 
      style="
        position: fixed;
        top: 0; 
        right: 0; 
        z-index: 12; 
        max-width: 100%; 
        height: 100vh;
        background-color: white;
        background: linear-gradient(
              to right bottom,
            rgba(255, 255, 255, 0.7),
            rgba(255, 255, 255, 0.3)
            );
        backdrop-filter: blur(1rem);
        color: black;
      ">

        <div class="container d-flex flex-column justify-content-center align-items-center h-100">
          <div class="container d-flex align-items-center p-2">
            <img src="assets/img/logo.PNG" alt="" height="80" width="80">
            <div class="container w-100">
                <h4>Canossa College</h4>
                <h5>San Pablo</h5>
            </div>
          </div>

          <div class="container d-flex flex-column align-items-center p-2">
          <?php include "canossa/login.canossa.php" ?>
          </div>

          <div class="rowd-flex align-items-center justify-content-center p-2">
            <p class="text-center">By using this service, you understood and agree to the Canossa College <a href="#">Terms of Use</a> and <a href="#">Privacy Statement</a></p>
          </div>
        </div>

      </div>

      <div class="container is-mobile-only m-0 p-2" 
      style="
        position: fixed;
        top: 0; 
        right: 0; 
        z-index: 12; 
        max-width: 100%; 
        height: 100vh;
        background-color: white;
        background: linear-gradient(
              to right bottom,
            rgba(255, 255, 255, 0.7),
            rgba(255, 255, 255, 0.3)
            );
        backdrop-filter: blur(1rem);
        color: black;
      ">
        <div class="container d-flex flex-column justify-content-center align-items-center h-100">
          <div class="container d-flex align-items-center p-2">
            <img src="assets/img/logo.PNG" alt="" height="80" width="80">
            <div class="container w-100">
                <h4>Canossa College</h4>
                <h5>San Pablo</h5>
            </div>
          </div>

          <div class="container d-flex flex-column align-items-center p-2">
          <?php include "canossa/login.canossa.php" ?>
          </div>

          <div class="rowd-flex align-items-center justify-content-center p-2">
            <p class="text-center">By using this service, you understood and agree to the Canossa College <a href="#">Terms of Use</a> and <a href="#">Privacy Statement</a></p>
          </div>
        </div>
      </div>
        
    </div>
</div>



  </main>
  <script>
   $('.carousel').carousel({
        interval: 15000 * 10
    });
</script>
    <script  src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="assets/js/sidenav.js"></script>
</body>
</html>
