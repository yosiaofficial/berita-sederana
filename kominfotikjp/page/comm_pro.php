<?php

    include 'lib/koneksi.php';

    $idnews = $_POST['id'];
    $date = date('Ymd');
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comm = $_POST['commentar'];

    try {
      $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $pdo = $conn->prepare('INSERT INTO tbl_comment (id_news, name, email, commentar, date_in)
                  values (:id_news, :name, :email, :commentar, :date_in)');
      $insertdata = array(':id_news' => $idnews, ':name' => $name, 'email' => $email, 'commentar' => $comm, ':date_in' => $date);

      $pdo->execute($insertdata);

      echo"<meta http-equiv='refresh' content='0;
      url=?page=home_detail&id=$idnews'>";

    } catch (PDOexception $e) {
      print "Added data failed: " . $e->getMessage() . "<br/>";
       die();
    }

 ?>
