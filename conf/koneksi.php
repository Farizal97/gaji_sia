<?php
  //error_reporting(0);

  $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "root";
  $dbname = "gaji_sia";

  $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname) or die("Tidak dapat terhubung ke database: ".mysqli_error());
?>