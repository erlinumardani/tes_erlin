<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Karyawan</title>
  <link type="text/css" rel="stylesheet" href="../css/jquery.css">
  <script type="text/javascript" src="../js/jquery-1.12.0.js"></script>
  <script type="text/javascript" src="../js/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
  </script>
</head>
<body>
 
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Insert</a></li>
    <li><a href="#tabs-2">Report</a></li>
  </ul>
  <div id="tabs-1">
    <?php include("insert_karyawan.php"); ?>
  </div>
  <div id="tabs-2">
  <?php include("report_karyawan.php"); ?>
  </div>

</div>
 
 
</body>
</html>