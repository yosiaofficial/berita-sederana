
<?php
  include "../lib/koneksi.php";

    $id = $_GET['id'];
    $result = $conn->prepare("SELECT * FROM tbl_news WHERE id_news =:id");
    $result->bindparam(':id', $id);
    $result->execute();
    $row=$result->fetch(PDO::FETCH_OBJ);
 ?>

<h1>Berita Ubah</h1>

<form name="edit" method="post" action="?page=edit_newspro" enctype="multipart/form-data">

  <table class="article">
    <tr>
      <td>Judul Berita</td>
      <td>
        <input type="hidden" name="id_news" value="<?php echo $row->id_news ?>">
        <input type="text" name="title" size="50" value="<?php echo $row->title_news ?>" required>
      </td>
    </tr>

    <tr>
      <td>Gambar</td>
      <td>
        <img src="../img/news/<?php echo $row->name_image ?>" width="100"><br><br>
        <input type="file" name="image">
      </td>
    </tr>

    <tr>
      <td>Isi Berita</td>
      <td>
        <textarea name="content" rows="8" cols="80" required><?php echo $row->content_news ?></textarea>
      </td>
    </tr>

    <tr>
      <td></td>
      <td>
        <input class="tombol-biru" type="submit" name="edit" value="Ubah & Simpan">
        <a class="tombol-merah" href="?page=news">Tutup</a>
      </td>
    </tr>
  </table>

</form>

