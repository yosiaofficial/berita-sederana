
<?php
    include '../lib/koneksi.php';

    $hal = isset($_GET['hal']) ? $_GET['hal'] : 1;
    $batas = 3;
    $posisi = ($hal-1) * $batas;

    $query = $conn->prepare("SELECT * FROM tbl_news LIMIT $posisi, $batas");
    $query->execute();
    $data = $query->fetchAll();
    $count = $query->rowCount();
?>

<h1>Berita</h1>
<a href="?page=add_news"class="tombol-biru">Tambah Berita</a><br><br>
<table class="news">
  <tr>
    <th>No.</th>
    <th>Gambar</th>
    <th>Judul Berita</th>
    <th>Tanggal</th>
    <th>Dilihat</th>
    <th>Aksi</th>
  </tr>
  <?php
  $no=1;
  foreach ($data as $value): ?>
      <tr>
          <td><?php echo $no++; ?></td>
          <td>
            <img src="../img/news/<?= $value['name_image'];?>" width="80">
          </td>
          <td><?php echo $value['title_news'] ?></td>
          <td><?php echo $value['created'] ?></td>
          <td><?php echo $value['hits'] ?></td>
          <td>
            <a class="tombol-biru" href="?page=edit_news&id=<?php echo $value['id_news']; ?>">ubah</a><br><br>
            <a class="tombol-merah" href="?page=delete_news&id=<?php echo $value['id_news']; ?>">hapus</a>
          </td>
      </tr>

  <?php
  endforeach;
   ?>
</table>
<br>
<?php

  if ($count == 0){
    echo "<center>--No entry data --</center>";
  }

  $semua = $conn->prepare("SELECT * FROM tbl_news");
  $semua->execute();
  $jmldata = $semua->rowCount();
  $jmlhal = ceil($jmldata/$batas);
  $sebelum = $hal - 1;
  $berikut = $hal + 1;

  echo "<div class='paging'>";

  if ($hal > 1){
    echo "<span><a href='?page=news&hal=1'><<</a></span>";
    echo "<span><a href='?page=news&hal=$sebelum'>Previous</a></span>";
  }else {
    echo "<span><<</span>";
    echo "<span>Previous</span>";
  }

  if ($hal < $jmlhal){
    echo "<span><a href='?page=news&hal=$berikut'>Next</a></span>";
    echo "<span><a href='?page=news&hal=$jmlhal'>>></a></span>";
  }else {
    echo "<span>Next</span>";
    echo "<span>>></span>";
  }

  echo "</div>";
?>

