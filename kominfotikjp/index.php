
<html>
<head>
	<title>
	Kominfotik JP
	</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>

	<div id="header">
		<h1>Kominfotik JP | Berita Kegiatan</h1>
	</div>
	<div id="menu">
		<div class="menu-kiri">
			<a class="link" href="?page=home">Beranda</a>
			<a class="link" href="?page=KIP">KIP</a>
			<a class="link" href="?page=ITI">ITI</a>
			<a class="link" href="?page=TU">Tata Usaha</a>
			<a class="link" href="?page=home">Berita</a>
			<a class="link" href="?page=nama_pegawai">Nama Pegawai</a>
			<a class="link" href="?page=contact">Kontak</a>
			<a class="link" href="?page=about">Tentang</a>
		</div>

		<div class="menu-kanan">
			<a class="tombol-biru" href="admin/login.php" target="_blank">Masuk</a>
		</div>

	</div>
	<div id="article">
		<div class="kiri">
			<?php

			include("content.php");

			 ?>
		</div>

		<div class="kanan">
			<?php

			include("page/fav_news.php");

			 ?>
		</div>

	</div>
	<div id="footer">
		<p>copyright &copy Kominfotik JP 2019</p>
	</div>

</body>

</html>
