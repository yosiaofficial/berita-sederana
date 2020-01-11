
<h1>Berita Tambah</h1>
<?php

	include '../lib/koneksi.php';

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


if (in_array($extension, $cek) === TRUE){
  if ($size_image < 5044070){

    move_uploaded_file($loc_image,"../img/news/$name_image");

    try {
			$conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$pdo = $conn->prepare('INSERT INTO tbl_news (title_news, content_news, created, name_image, type_image, size_image)
									values (:title_news, :content_news, :created, :name_image, :type_image, :size_image)');

			$insertdata = array(':title_news' => $title , ':content_news' => $content, 'created' => $date,
						              ':name_image' => $name_image, ':type_image' => $type_image, ':size_image' => $size_image);

			$pdo->execute($insertdata);

			echo "<center><img src='../img/icons/ceklist.png' width='60'></center>";
			echo "<center><b>berita berhasil ditambahkan</b></center>";
			echo"<meta http-equiv='refresh' content='1;
			url=?page=news'>";

		} catch (PDOexception $e) {
			print "tambah berita gagal: " . $e->getMessage() . "<br/>";
		   die();
		}



}else{
	echo "<center><img src='../img/icons/cancel.png' width='60'></center>";
	echo "<center><b>ukuran file terlalu besar</b></center>";
	echo "<center><a href='?page=news'>back</a></center>";
}
}else {
	echo "<center><img src='../img/icons/cancel.png' width='60'></center>";
	echo"<center><b>ekstensi file tidak sesuai</b></center>";
	echo "<center><a href='?page=news'>back</a></center>";
}

 ?>

