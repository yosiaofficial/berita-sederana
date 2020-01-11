<p><b>BERITA POPULER</b></p>

<?php

include "lib/koneksi.php";

$query = $conn->prepare("SELECT * FROM tbl_news WHERE hits > 0 ORDER BY hits DESC");
$query->execute();
$data = $query->fetchAll();

foreach ($data as $value) {
 ?>
 <div class="isian">
   <a href="?page=home_detail&id=<?php echo $value['id_news']; ?>">
     <p><?php echo $value['title_news']; ?></p></a>
 </div>
<?php } ?>
