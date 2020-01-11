<?php

  if (isset($_GET['page'])) $page=$_GET['page'];
  else $page="home";

  if ($page == "home") include("page/home.php");

  elseif ($page == "KIP") include("page/KIP.php");
  elseif ($page == "ITI") include("page/ITI.php");
  elseif ($page == "TU") include("page/TU.php");
  elseif ($page == "nama_pegawai") include("page/pegawai.php");
  elseif ($page == "home_detail") include("page/home_detail.php");
  elseif ($page == "contact") include("page/contact.php");
  elseif ($page == "contact_pro") include("page/contact_pro.php");
  elseif ($page == "comm_pro") include("page/comm_pro.php");
  elseif ($page == "about") include("page/about.php");


else echo"Konten tidak ada";

?>
