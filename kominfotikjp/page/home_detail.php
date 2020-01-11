<?php

include 'lib/koneksi.php';

$id = $_GET['id'];

$hits = $conn->prepare("UPDATE tbl_news SET hits=hits+1 WHERE id_news = :id");
$hits->bindparam(':id', $id);
$hits->execute();

$query = $conn->prepare("SELECT * FROM tbl_news WHERE id_news = :id");
$query->bindparam(':id', $id);
$query->execute();
$row=$query->fetch(PDO::FETCH_OBJ);

  ?>

  <div class="isian">

      <h2><?php echo $row->title_news ?></h2>
      <p>ditulis oleh <b><i>admin</i></b>, <i><?php echo $row->created ?></i></p>
      <p>
        <?php if ($row->name_image != "") ?>
          <img class="detail" src="img/news/<?php echo $row->name_image ?>">

        <?php echo $row->content_news ?>
      </p>

  </div>

  <?php

    $comment = $conn->prepare("SELECT * FROM tbl_comment WHERE id_news =:id");
    $comment->bindparam(':id', $id);
    $comment->execute();
    $data = $comment->fetchAll();
    $count = $comment->rowCount();

    echo "<h3>$count Komentar</h3>";

    foreach ($data as $value) { ?>

    <div class="isian">
      <p><button class="tombol-biru"><?php echo $value['name']; ?></button> - <i><?php echo $value['date_in']; ?></i></p>
      <p><?php echo $value['commentar'] ?></p>
    </div>

  <?php } ?>

  <h3>Isi Komentar</h3>

  <form class="formkomentar" action="?page=comm_pro" method="post">
    <input type="hidden" name="id" value="<?php echo $row->id_news; ?>">

    <table>
      <tr>
        <td width="25%">Nama</td>
        <td><input type="text" name="name" value="" required></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><input type="email" name="email" value="" required></td>
      </tr>
      <tr>
        <td valign="top">Komentar</td>
        <td>
          <textarea name="commentar" rows="10" cols="50" required></textarea>
        </td>
      </tr>
      <tr>
        <td></td>
        <td>
          <input class="tombol-biru" type="submit" value="Kirim Komentar">
        </td>
      </tr>
    </table>
  </form>

