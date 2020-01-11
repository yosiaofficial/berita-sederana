<?php

  if (isset($_GET['page'])) $page=$_GET['page'];
  else $page="dashboard";

  if ($page == "dashboard") include("page/dashboard.php");

  elseif ($page == "news") include("page/news/news.php");
  elseif ($page == "add_news") include("page/news/add_news.php");
  elseif ($page == "add_newspro") include("page/news/add_newspro.php");
  elseif ($page == "edit_news") include("page/news/edit_news.php");
  elseif ($page == "edit_newspro") include("page/news/edit_newspro.php");
  elseif ($page == "delete_news") include("page/news/delete_news.php");

  elseif ($page == "message") include("page/message/message.php");

else echo"Konten tidak ada";

?>
