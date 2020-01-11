<h2>Contact US</h2>

<div class="formkomentar">
<?php

    include 'lib/koneksi.php';

    $date = date('Ymd');
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    try {
      $conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $pdo = $conn->prepare('INSERT INTO tbl_message (name, email, message, date_in)
                  values (:name, :email, :message, :date_in)');
      $insertdata = array(':name' => $name, 'email' => $email, 'message' => $message, ':date_in' => $date);

      $pdo->execute($insertdata);

      echo "<center><b>pesan berhasil dikirim</b></center>";
      echo"<meta http-equiv='refresh' content='1;
      url=?page=contact'>";

    } catch (PDOexception $e) {
      print "Added data failed: " . $e->getMessage() . "<br/>";
       die();
    }
 ?>
</div>
