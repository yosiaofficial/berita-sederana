<?php

include 'lib/koneksi.php';

$hal = isset($_GET['hal']) ? $_GET['hal'] : 1;
$batas = 3;
$posisi = ($hal-1) * $batas;

$query = $conn->prepare("SELECT * FROM tbl_news ORDER BY created DESC LIMIT $posisi, $batas");
$query->execute();
$data = $query->fetchAll();

foreach ($data as $value) {

  $isi = substr($value['content_news'],0,500);
  $isi = substr($value['content_news'],0,strrpos($isi," "));
  ?>

  <div class="isian">

  <a href="?page=home_detail&id=<?php echo $value['id_news']; ?>">
    <h2><?php echo $value['title_news'];?></h2></a>
  <p>ditulis oleh <b><i>admin</i></b>, <i><?php echo $value['created']; ?></i></p>
  <p>
    <?php if ($value['name_image'] != "") { ?>
      <a href="?page=home_detail&id=<?php echo $value['id_news']; ?>">
      <img class="satu" src="img/news/<?php echo $value['name_image'];?>">
      </a>
    <?php } ?>

    <?php echo $isi; ?> ...
    <a href="?page=home_detail&id=<?php echo $value['id_news']; ?>">baca selengkapnya</a>
  </p>
  </div>
  <br>

<?php
}

    $semua = $conn->prepare("SELECT * FROM tbl_news");
    $semua->execute();
    $jmldata = $semua->rowCount();
    $jmlhal = ceil($jmldata/$batas);
    $sebelum = $hal - 1;
    $berikut = $hal + 1;

    echo "<div class='paging'>";

    if ($hal > 1){
      echo "<span><a href='?page=home&hal=1'><<</a></span>";
      echo "<span><a href='?page=home&hal=$sebelum'>Sebelumnya</a></span>";
    }else {
      echo "<span><<</span>";
      echo "<span>Sebelumnya</span>";
    }

    if ($hal < $jmlhal){
      echo "<span><a href='?page=home&hal=$berikut'>Selanjutnya</a></span>";
      echo "<span><a href='?page=home&hal=$jmlhal'>>></a></span>";
    }else {
      echo "<span>Selanjutnya</span>";
      echo "<span>>></span>";
    }

    echo "</div>";
 ?>
