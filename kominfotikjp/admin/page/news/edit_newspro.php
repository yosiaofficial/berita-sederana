<h1>News Edit</h1>

<?php

include '../lib/koneksi.php';

$id = $_POST['id_news'];
$title = $_POST['title'];
$content = $_POST['content'];

$name_image = $_FILES['image']['name'];
$loc_image = $_FILES['image']['tmp_name'];
$type_image = $_FILES['image']['type'];

$date = date('Ymd');
$isi = addslashes($_POST['content']);

$cek         = array('png','jpg','jpeg','gif');
$x           = explode('.',$name_image);
$extension   = strtolower(end($x));
$size_image  = $_FILES['image']['size'];

if ($loc_image != ""){

      if (in_array($extension, $cek) === TRUE){
        if ($size_image < 5044070){

          $query = $conn->prepare("SELECT * FROM tbl_news WHERE id_news =:id ");
          $query->bindparam(':id', $id);
          $query->execute();
          $row=$query->fetch(PDO::FETCH_OBJ);

          if ($row->name_image)
            unlink("../img/news/$row->name_image");

            move_uploaded_file($loc_image,"../img/news/$name_image");

          try {
      			$conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      			$pdo = $conn->prepare('UPDATE tbl_news SET
                                  title_news = :title_news,
                                  content_news = :content_news,
                                  created = :created,
                                  name_image = :name_image,
                                  type_image = :type_image,
                                  size_image = :size_image
                                  WHERE id_news = :id_news');

      			$updatedata = array(':title_news' => $title , ':content_news' => $content, 'created' => $date, ':name_image' => $name_image,
      						              ':type_image' => $type_image, ':size_image' => $size_image, ':id_news' => $id);

      			$pdo->execute($updatedata);

						echo "<center><img src='../img/icons/ceklist.png' width='60'></center>";
      			echo "<center><b>Update data Success</b></center>";
						echo"<meta http-equiv='refresh' content='1;
				    url=?page=news'>";

      		} catch (PDOexception $e) {
      			print "Insert data gagal: " . $e->getMessage() . "<br/>";
      		   die();
      		}
			}else{
				echo "<center><img src='../img/icons/cancel.png' width='60'></center>";
			  echo "<center><b>The file size is too large</b></center>";
				echo "<center><a href='?page=news'>back</a></center>";
			}
			}else {
				echo "<center><img src='../img/icons/cancel.png' width='60'></center>";
			  echo"<center><b>Extension is not allowed</b></center>";
				echo "<center><a href='?page=news'>back</a></center>";
			}
		}else{

			try {
				$conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$pdo = $conn->prepare('UPDATE tbl_news SET
															title_news = :title_news,
															content_news = :content_news,
															created = :created
															WHERE id_news = :id_news');

				$updatedata = array(':title_news' => $title , ':content_news' => $content, 'created' => $date, ':id_news' => $id);
				$pdo->execute($updatedata);

				echo "<center><img src='../img/icons/ceklist.png' width='60'></center>";
				echo "<center><b>Update data Success</b></center>";
				echo"<meta http-equiv='refresh' content='1;
		    url=?page=news'>";


			} catch (PDOexception $e) {
				print "Insert data gagal: " . $e->getMessage() . "<br/>";
				 die();
			}

		}

 ?>

