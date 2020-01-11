<?php

try {
  $conn = new PDO('mysql:host=localhost;dbname=jp16db','root','dbpusat2012');
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (Exception $e) {
  print "Koneksi atau query bermasalah" . $e->getMessage() . "</br>";
  die();
}

 ?>
