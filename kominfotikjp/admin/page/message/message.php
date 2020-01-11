
<?php
    include '../lib/koneksi.php';

    $hal = isset($_GET['hal']) ? $_GET['hal'] : 1;
    $batas = 5;
    $posisi = ($hal-1) * $batas;

    $query = $conn->prepare("SELECT * FROM tbl_message LIMIT $posisi, $batas");
    $query->execute();
    $data = $query->fetchAll();
    $count = $query->rowCount();
?>

<h1>Pesan & Komentar</h1>
<table class="news">
  <tr>
    <th>No.</th>
    <th>Nama</th>
    <th>Email</th>
    <th>Pesan</th>
    <th>Tanggal</th>
  </tr>
  <?php
  $no=1;
  foreach ($data as $value): ?>
      <tr>
          <td><?php echo $no++; ?></td>
          <td><?php echo $value['name'] ?></td>
          <td><?php echo $value['email'] ?></td>
          <td><?php echo $value['message'] ?></td>
          <td><?php echo $value['date_in'] ?></td>
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

  $semua = $conn->prepare("SELECT * FROM tbl_message");
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

