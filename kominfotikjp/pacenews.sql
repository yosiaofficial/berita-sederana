-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 01:49 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pacenews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'pace', 'pace'),
(2, 'ryan', 'ryan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_comment` int(5) NOT NULL,
  `id_news` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `commentar` text NOT NULL,
  `date_in` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_comment`, `id_news`, `name`, `email`, `commentar`, `date_in`) VALUES
(2, 22, 'Pace', 'ryanjoker87@gmail.com', 'Insha allah pasti berkah ilmunya', '2017-12-20'),
(3, 22, 'Umar', 'umarkotak@gmail.com', 'Eta Gege..!!', '2017-12-20'),
(9, 22, 'nilam', 'nilam@gmail.com', 'Mantaps gans...', '2017-12-20'),
(10, 23, 'pace', 'pace@gmail.com', 'pidi baiq, idolaku.. :)', '2017-12-20'),
(11, 21, 'pace', 'pace@gmail.com', 'Allahu Akbar..!!', '2017-12-21'),
(12, 23, 'olin', 'olin@gmail.com', 'cool..!!', '2017-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id_message` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `date_in` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id_message`, `name`, `email`, `message`, `date_in`) VALUES
(1, 'pace', 'pace@gmail.com', 'mantaps pokoknya..', '2017-12-20'),
(2, 'olin', 'olin@gmail.com', 'Mantab djiwa', '2017-12-21'),
(3, 'grandis', 'gransi@gmail.com', 'mantab bro.. tingkatkan.. ', '2017-12-21'),
(4, 'aku', 'aku@gmail.com', 'akjdnafajkfj', '2017-12-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id_news` int(100) NOT NULL,
  `title_news` varchar(100) NOT NULL,
  `content_news` text NOT NULL,
  `created` date NOT NULL,
  `hits` int(5) NOT NULL,
  `name_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id_news`, `title_news`, `content_news`, `created`, `hits`, `name_image`, `type_image`, `size_image`) VALUES
(21, 'Mungkinkah Yerusalem jadi ibu kota perdamaian ?', 'Di tengah unjuk rasa memprotes penyitaan tanah-tanah Arab di Yerusalem pada 13 Mei 1995, Faisal Husseini menyampaikan pidato menggugah di kaki dinding Kota Lama.\r\n\r\nWakil Organisasi Pembebasan Palestina (PLO) di Yerusalem itu mengatakan, \"saya memimpikan hari ketika seorang Palestina berkata \'Yerusalem Kita\', yang berarti Palestina dan Israel; dan ada seorang Israel akan berkata \'Yerusalem Kita\', yang berarti Israel dan Palestina\".\r\n\r\nKata-kata Faisal itu kemudian mengilhami ratusan orang Israel terkemuka--di antaranya penulis, kritikus, seniman, dan mantan anggota Knesset atau Parlemen Israel--untuk menandatangani sebuah pernyataan bersama. Begini bunyi pemaklumannya:\r\n\r\nYerusalem milik kita, warga Israel dan Palestina--Muslim, Kristen, dan Yahudi.\r\n\r\nYerusalem kita merupakan mosaik segala kebudayaan, agama, dan zaman yang telah memperkaya kota ini sejak era dulu hingga kini--bangsa Kanaan, orang Yebus, serta Israel, Yahudi keturunan Yunani, orang Romawi dan Bizantium, Kristen dan Muslim, bangsa Arab dan Mamluk, wangsa Utsmaniyah dan Briton, Palestina dan Israel.\r\n\r\nMereka dan lain-lainnya yang telah memberikan sumbangan kepada kota ini meninggalkan jejak jasmani dan rohani pada lanskap Yerusalem.\r\n\r\nYerusalem kita mesti bersatu, harus menjadi milik seluruh penduduknya, dan terbuka bagi pelbagai kalangan. Tanpa mengenal batas wilayah. Tanpa kawat berduri sebagai pemisah.\r\n\r\nYerusalem kita mesti menjadi ibu kota dua negara yang kelak bersisian di tanah ini: Yerusalem Barat sebagai ibu kota Israel, dan Yerusalem Timur sebagai ibu kota Palestina.\r\n\r\nYerusalem kita harus menjadi Ibu Kota Perdamaian.\r\n\r\nEkspresi Faisal dan para penanda tangan manifesto boleh jadi menetas dari kejemuan atas sejarah Yerusalem yang sesak dengan perseteruan berujung darah tumpah. Ingatan kolektif mereka muskil lepas dari jejak sekitar dua kehancuran, 23 kali pengepungan, 52 penyerbuan, serta 44 pendudukan dan pendudukan ulang atas kota tersebut.\r\n\r\nTarikh 1967 agaknya berada di dalam bagasi memori dimaksud. Kala itu, karena cemas Holocaust kedua bakal pecah, militer Israel mencari cara menyiasati Mesir, Yordania, dan Suriah.\r\n\r\nKekuatan militer Israel waktu itu: 264 ribu serdadu, 800 tank, dan 300 pesawat tempur. Lawannya: 340 ribu serdadu, 1800 tank, dan 660 pesawat tempur.\r\n\r\nMaka, pada pagi 5 Juni 1967, Israel curi start dengan melepaskan serangan udara ke arah pangkalan militer Mesir. Lebih dari 90 persen pesawat tempur yang tengah terparkir pun hancur atau rusak. Suriah juga kebagian hantaman serupa.', '2017-12-21', 11, '1.jpg', 'image/jpeg', 137715),
(22, 'Pesulap misterius Indonesia juarai Asia\'s Got Talent', 'Ajang Asia\'s Got Talent musim kedua menghasilkan pemenang dari Indonesia. The Sacred Riana, mentalis asal Indonesia memenangi Asia\'s Got Talent 2017 pada 14 Desember 2017, meraup hadiah senilai US $100 ribu (Rp1,36 miliar).\r\n\r\nRiana berhasil membawa pulang gelar juara setelah mengalahkan sembilan finalis dari berbagai negara di Asia, termasuk pemain harpa Angela July yang juga berasal dari Indonesia, kelompok tarian DM-X Comvalenos dari Filipina, dan pemain ukulele cilik Feng E dari Taiwan. Dibanding kontestan lain, Riana memang jauh berbeda.\r\n\r\nPenampilannya seperti hantu anak sekolahan dalam film horor Jepang. Ia mengenakan seragam kemeja lengan panjang dengan dress terusan hingga bawah lutut berpadu dengan kaus kaki panjang. Sebelah matanya tertutupi oleh rambut hitam yang panjang. Gadis muda ini selalu membawa sebuah boneka yang tak kalah seram dari Annabelle.\r\n\r\nPenampilan Jepang itu, tak lain karena kesukaannya terhadap kultur modern negeri Sakura. Terutama film horor.\r\n\r\n\"Riana memang suka menonton film horor. Apalagi yang berasal dari Jepang, jadinya sosok The Sacred itu muncul. Dari situ Riana jadi terinpirasi,\" ujar Vernon Bow, pesulap yang menjadi manajer Riana kepada The Strait Times (16/12/2017).\r\n\r\nMengapa ia diwakili sang manajer? Riana memang tak pernah berbicara dalam aksinya. Aslinya, sifatnya memang begitu. \"Pada dasarnya dia pendiam, jadi gampang saja. Dia orangnya tidak banyak omong. Saya pikir orang suka dia karena tidak pernah ada pesulap seperti Riana,\" ujar Vernon.\r\n\r\nTidak hanya sulap, sifat pendiam dipadukan dandanan seram adalah gimmick utama Riana. Pada saat final, ia membuat sebuah tato bintang muncul di tangan Anggun C. Sasmi, salah satu juri, serta tiba-tiba muncul di belakang sang penyanyi, membuat pelantun \"Tua-Tua Keladi\" itu berteriak.\r\n\r\nIa memang cenderung memilih untuk mengerjai Anggun dibanding dua juri lain, Jay Park dan David Foster. Maklum, Anggun juga berasal dari Indonesia.\r\n\r\nSebenarnya, Riana tidak semisterius itu. Dilansir dari Bisnis.com, ia bernama asli Marie Antoinette Riana Graharani, lahir di Jakarta, 13 Juli 1992. Lulusan SMA Santa Ursula, Jakarta ini merupakan sulung dari dua bersaudara. Sejak kecil, Riana mengidolakan pesulap terkenal David Copperfield. Kebetulan, ayahnya Riana juga pesulap.\r\n\r\nNamanya pertama dikenal setelah mentalis Deddy Corbuzier memilihnya tanpa seleksi untuk menjadi peserta ajang The Next Mentalist pada 2014. Akhirnya ia menjadi runner up. Karakter Riana yang menyeramkan, misterius, dan tak banyak bicara itu merupakan aliran bizzare illusionist, dan tampaknya merupakan hasil didikan Deddy.', '2017-12-19', 10, '2.jpg', 'image/jpeg', 63333),
(23, 'Pidi Baiq, Imam besar yang absurd', '\"Aku bukan seniman,\" katanya. \"Mungkin lebih baik jadi orang gila tapi menyenangkan ya daripada serius tapi menyebalkan.\"\r\n\r\nKami tertegun, lalu tersenyum dengan perkataannya itu. Pidi Baiq memang bukan manusia yang punya sekat dalam bicara. Ia bersikap apa adanya, persis ketika kami berbincang dengannya pada Rabu (06/12/2017).\r\n\r\nSelama dua jam lebih, perbincangan itu banyak diisi dengan guyon. Pidi kerap mengucapkan kalimat yang filosofis. Ia seperti tahu bagaimana membuat lawan bicaranya betah duduk berlama-lama.\r\n\r\nSaat kami tanya pernahkah ia serius dalam hidupnya. \"Pernah, saat salat dan kasih zakat,\" ujar bapak dua anak itu. Lagi-lagi, ia membuat kami tertawa.\r\n\r\nSedikit manusia di bumi ini yang punya berbagai macam keahlian. Pidi salah satunya. Ia pintar menggambar hingga menghasilkan karya lukis, ilustrasi buku, dan gambar prangko.\r\n\r\nIa bisa bermusik dan menciptakan ratusan lagu untuk grup musiknya, The Panasdalam Bank. Pidi juga pandai menulis. Keahlian yang satu ini membuat namanya melambung di kalangan anak remaja sekarang.\r\n\r\nMereka menggilai buku trilogi karya Pidi, yaitu Dilan: Dia Adalah Dilanku Tahun 1990, Dilan: Dia Adalah Dilanku Tahun 1991, dan Milea: Suara Dari Dilan. Ketiganya menjadi bestseller di tanah air.\r\n\r\nKisahnya soal percintaan sepasang remaja bernama Dilan dan Milea yang duduk di bangku sekolah menengah atas. Pidi mengambil latar Bandung, kota kelahiran dan tempat tinggalnya, pada era 1990an.\r\n\r\nSemua karyanya ia jalani apa adanya. Tak ada target, apalagi niat ingin membuat ini-itu. Baginya semua mengalir dari dalam sehingga ia mengaku tak pernah terjebak dengan isu ketenaran dan kesuksesan.\r\n\r\n\"Jika manusia itu harus ambisius, maka aku bukan manusia yang benar,\" kata Pidi.\r\n\r\nIa mengucapkan itu sambil menghisap rokok putih ditemani korek api cap Tiga Durian. Terdengar absurd awalnya. Tapi kami bisa mengamini maksud perkataannya itu. Di atas meja ia letakkan telpon seluler Nokia seri dua yang jauh dari kata canggih.\r\n\r\nKalau sedang berkarya, energi dalam tubuhnya bisa begitu besar hingga masuk dalam fase trans. Ia kerap beberapa kali kaget dengan apa yang ia tulis. \"Kok saya bisa menulis kayak gini ya?\" ujarnya.\r\n\r\nMungkin karena selalu totalitas dalam berkarya, ia pun sulit berkompromi dengan orang lain. Ia sempat kecewa kala menyutradarai film untuk buku pertama trilogi Dilan-Milea. Pidi mengatakan harus banyak kompromi. Pada akhirnya film tersebut ia selesaikan dengan perasaan tidak puas.\r\n\r\n\"Bukan karena isi ceritanya,\" ujar Pidi kepada Fajar WH, Sorta Tobing, dan fotografer Wisnu Agung Prasetyo. \"Lebih karena saya berkarya tidak sepenuhnya di wilayah saya.\"\r\n\r\nKami bertemu dengannya di Rumah The Panasdalam, Jalan Ambon Nomor 8A, Citarum, Bandung, Jawa Barat. Letaknya di sisi selatan Gedung Sate pada sore hari. Suasana kafe merangkap tempat pertunjukan dan ruang diskusi masih sepi pengunjung.', '2017-12-19', 7, '3.jpg', 'image/jpeg', 161398),
(24, 'iPhone X, beruang kutub, hingga upaya melawan pemanasan global', 'Dalam hitungan hari, tiga generasi terbaru iPhone akan segera hadir di Tanah Air. Ketiga generasi tersebut antara lain iPhone 8, iPhone 8 Plus, dan iPhone X.\r\n\r\nAda dua perusahaan yang telah ditunjuk Apple untuk memasarkan iPhone X, 8, dan 8 Plus di Indonesia, yaitu Smartfren Telecom dan Erajaya Group--melalui anak perusahaannya Teletama Artha Mandiri (TAM).\r\n\r\nKabar hadirnya tiga gawai premium Apple ini tak luput dari Menteri Komunikasi dan Informatika (Menkominfo) Rudiantara. Ia menyambut baik kehadiran tiga ponsel tersebut.\r\n\r\nKetiga ponsel ini bisa lebih awal masuk ke Tanah Air dikarenakan proses pengajuan sertifikasi sudah lebih cepat, terlebih bagi perangkat dengan merek global yang populer.\r\n\r\nLalu apa harapan Rudiantara dengan kepada Apple?\r\n\r\nBeberapa hari lalu, sebuah video yang memperlihatkan seekor beruang kutub yang sangat kurus, tertatih-tatih berjalan, dan mencari makan di tempat sampah menjadi viral. Pemandangan yang tidak biasa tersebut membuat jutaan orang di seluruh dunia terkejut dan marah.\r\n\r\nMenurut Paul Nicklen, seorang fotografer majalah National Geographic dan seorang ahli biologi, ia sudah ribuan kali bertemu beruang di alam liar. Namun, pemandangan kali ini merupakan pemandangan yang paling menyedihkan yang pernah dia lihat. Bahkan, ia menyatakan merekam video tersebut sembari menangis.\r\n\r\nVideo itu memperlihatkan seekor beruang kutub yang tinggal tulang berbalut kulit berbulu putih. Salah satu kaki belakangnya diseret-seret ketika berjalan, yang mungkin disebabkan karena atrofi otot.\r\n\r\nBeruang tersebut membongkar tempat-tempat sampah yang digunakan secara musiman oleh nelayan Inuit, penduduk asli yang tinggal di daerah Kanada utara dan Alaska. Tidak mendapatkan apa yang dicarinya, beruang tersebut akhirnya pasrah dan roboh ke tanah.\r\n\r\nApa yang menyebabkan beruang tersebut kelaparan hingga kurus?', '2017-12-19', 4, '4.jpg', 'image/jpeg', 28091),
(25, 'Pemerintah Palestina Kecam Veto AS terhadap Resolusi PBB Tentang Yerusalem', 'Pemerintah Otonomi Palestina mengecam AS karena memveto rancangan resolusi Dewan Keamanan PBB mengenai Yerusalem. Pemerintah Palestina meyakini, langkah AS itu akan mengarah ke pengucilan lebih jauh Negeri Paman Sam di kancah internasional.\r\n\r\nAS pada Senin memveto rancangan resolusi di Dewan Keamanan (DK) PBB, yang diusulkan oleh Mesir meskipun 15 anggota lain memberi suara untuk mendukung rancangan tersebut. Rancangan ini menolak pengakuan AS atas Yerusalem sebagai Ibu Kota Israel.\r\n\r\nJuru Bicara Presiden Palestina, Nabil Abu Rudeinah, di dalam satu pernyataan resmi mengatakan veto AS terhadap rancangan resolusi itu bertentangan dengan konsensus internasional.\r\n\r\n\"Veto AS melanggar resolusi sah internasional dan resolusi Dewan Keamanan. Itu penuh bias buat pendudukan dan agresi,\" kata Abu Rudeinah, sebagaimana dikutip Xinhua --yang dipantau Antara di Jakarta, Selasa (18/12/2017).\r\n\r\nVeto tersebut mengarah kepada pengucilan lebih lanjut Amerika Serikat dan akan memprovokasi masyarakat internasional, katanya. Ia menambahkan, \"Kami akan melanjutkan tindakan kami di PBB dan semua lembaga lain internasional guna mempertahankan hak rakyat kami.\"\r\n\r\nPresiden Palestina Mahmoud Abbas sebelumnya mengumumkan Paletina akan mengajukan permohonan kepada PBB untuk keanggotaan penuh Negara Palestina sebagai reaksi terhadap tindakan AS mengenai Yerusalem.\r\n\r\nPresiden AS Donald Trump pada Rabu, 6 Desember, mengumumkan AS mengakui Yerusalem sebagai Ibu Kota Israel dan memerintahkan pemindahan Kedutaan Besar AS ke kota suci yang menjadi sengketa itu. Tindakan tersebut telah membuat marah rakyat Palestina dan umat Islam lain di seluruh dunia.\r\n\r\nIsrael merebut Yerusalem Timur dalam Perang 1967, dan pada 1980 mengumumkan seluruh Kota Yerusalem sebagai \"ibu kotanya yang abadi\". Namun rakyat Palestina berkeras Yerusalem Timur mesti menjadi ibu kota negara masa depan mereka.', '2017-12-19', 0, '5.jpg', 'image/jpeg', 82984),
(26, 'Suarez Sambut Coutinho dan Griezmann di Barcelona', ' Luis Suarez siap menyambut Philippe Coutinho (Liverpool) dan Antoine Griezmann (Atletico Madrid) di Barcelona. El Pistolero â€“julukan Suarezâ€“ menilai Barcelona merupakan klub yang menginginkan pemain-pemain hebat bergabung bersama mereka.\r\n\r\nGriezmann dan Coutinho sebenarnya bukanlah target baru Blaugrana â€“julukan Barcelona. Kedua pemain itu sejak dulu sudah masuk radar Barcelona. Namun, tawaran demi tawaran yang diajukan manajemen Barcelona ditolak kedua klub yang menaungi mereka.\r\n\r\nPenolakan itu sebenarnya tidak mengherankan. Baik Coutinho dan Griezmann merupakan pemain andalan masing-masing. Grizou â€“sapaan akrab Griezmannâ€“ merupakan juru gedor andalan Atletico. Dari 13 penampilan di Liga Spanyol 2017-2018, penyerang berpaspor Prancis itu mengemas lima gol dan tiga assist.\r\n\r\nSementara Coutinho, mendulang 10 gol dan delapan assist dari 17 penampilan di semua ajang musim ini. Kehadiran kedua pemain itu dibutuhkan untuk menambah daya gedor Barcelona. Dalam pola 4-3-3, Griezmann bisa beroperasi sebagai salah satu penyerang bersama Suarez dan Lionel Messi.\r\n\r\nUntuk Coutinho, gelandang berpaspor Brasil itu dapat menggantikan posisi Andres Iniesta yang sudah tak lagi muda. Saat ini usia Iniesta sudah menginjak 33 tahun dan kondisi fisiknya tak sekuat tiga atau empat tahun lalu.\r\n\r\nâ€œGriezmann dan Coutinho adalah pemain elite yang selalu bermain di level teratas. Keduanya masih muda dan memiliki karier yang panjang. Pastinya, Barcelona selalu menginginkan pemain terbaik,â€ kata Suarez mengutip dari RAC105, Selasa (19/12/2017).\r\n\r\nTentu hal luar biasa jika Griezmann dan Coutinho bisa didaratkan ke Estadio Camp Nou. Catatan tak terkalahkan Barcelona yang saat ini berlangsung di Liga Spanyol dan Liga Champions bukan tak mungkin akan terus berlanjut.', '2017-12-19', 3, '6.jpg', 'image/jpeg', 118590),
(27, 'Game Cuphead Palsu Beredar di iOS App Store', 'Sebuah game run-and-gun Cuphead muncul di perangkat iOS belakangan ini. Namun ternyata, game tersebut adalah palsu alias bukan dari pengembang yang sesungguhnya.\r\n\r\nTouch Arcade melaporkan bahwa versi iOS tersebut telah dipublikasikan baru-baru ini, dan terhubung dengan sebuah website yang mirip dengan App Store.\r\n\r\nDari screenshot yang dibagikan, pengembang game Cuphead tercatat sebagai StudioMDHR. Tapi anehnya, link pengembang merujuk pada alamat studiomdhrgames.com.\r\n\r\nStudioMDHR sendiri diketahui memiliki website resmi di alamat studiomdhr.com. Selain itu, keanehan juga terlihat jika Anda membeli game tersebut yang berasal dari StudioMDHR Entertainment Inc.\r\n\r\nDi Twitter, pengembang aslinya mengumumkan bahwa game Cuphead tersebut merupakan scam. Mereka berjanji bakal menghapus game tersebut secepatnya.\r\n\r\n\"Ada aplikasi scam Cuphead di toko iOS, ini adalah penipuan. Kami sedang berupaya menghapus aplikasi palsu ASAP!â€‹\" ungkap StudioMDHR sebagaimana dikutip dari The Verge, Selasa (19/12/2017).\r\n\r\nTak terlalu mengejutkan ada pihak-pihak tertentu yang mencoba mengambil keuntungan dari popularitas Cuphead. Namun anehnya game tersebut lolos dari proses verifikasi Apple melalui App Store miliknya. Untuk saat ini aplikasi tersebut telah dihapus pihak Apple.', '2017-12-19', 0, '7.jpg', 'image/jpeg', 65365),
(28, '6 Pemain yang Sering Cetak Gol Penalti di Liga Inggris, Nomor 1 Top Skor Sepanjang Masa', 'LIGA Inggris bisa dibilang kompetisi paling ketat di muka bumi ini. Indikator keketatan itu ialah menyeruaknya tim-tim medioker yang bersaing di jalur juara. Siapa sangka Leicester yang hanya finis di posisi 14 Liga Inggris 2014-2015, menjuarai ajang yang sama setahun berselang.\r\n\r\nSementara di musim ini, giliran Burnley yang membuat kejutan. Hingga pekan 18, tim asuhan Sean Dyche duduk di posisi enam dengan koleksi 32 angka. Bahkan The Clarets â€“julukan Burnleyâ€“ berada di atas Tottenham Hotspur yang duduk di tempat ketujuh.\r\n\r\nLevel keketatan itu membuat setiap peluang yang didapat, pantang untuk dibuang. Salah satu peluang yang sayang untuk disia-siakan ialah hadiah penalti. Sekarang yang jadi pertanyaan, siapa pesepakbola yang paling banyak mencetak gol penalti di Liga Inggris?', '2017-12-19', 0, '8.jpg', 'image/jpeg', 71638),
(29, 'Akun Facebook Mark Zuckerberg Bisa Diblokir!', 'Pengguna Facebook akhirnya bisa melakukan blokir pada akun Mark Zuckerberg, sang CEO Facebook. Dengan demikian, pengguna tidak bisa lagi melihat posting-an dari akun orang nomor satu di tubuh perusahaan Facebook tersebut.\r\n\r\nDilansir Telegraph, Selasa (19/12/2017), pengguna Facebook memiliki kemampuan untuk memblokir setiap akun untuk sementara waktu, tetapi pada September tahun ini diketahui bahwa akun pendiri Facebook kebal terhadap fitur blokir tersebut.\r\n\r\nPengguna yang mencoba untuk memblokir akun Mark Zuckerberg akan menemukan pesan, \"Profil ini tidak bisa diblokir untuk saat ini\". Sebetulnya masalah ini tidak disengaja, artinya terdapat problem sehingga akun milik Mark tidak dapat diblokir oleh pengguna.\r\n\r\nKini, Facebook telah memperbaiki layana mereka sehingga pengguna bisa memblokir akun bos Facebook itu. \"Anda memblokir Mark Zuckerberg. Kami menyesal telah mengalami pengalaman ini,\" tulis sebuah pesan yang diterima oleh mereka yang memblokir akun Mark Zuckerberg.\r\n\r\nSaat pengguna memblokir akun, profil tersebut tidak lagi muncul di garis waktu mereka dan mereka tidak dapat melihat, mengirim pesan atau berinteraksi satu sama lain. Pengguna tidak diberitahu jika profil mereka diblokir.\r\n\r\nSekadar informasi, profil Zuckerberg semakin aktif dan saling berbagi, dengan hampir 100 juta pengikut dan ribuan orang berkomentar dan berbagi posting-an. Posting-annya mendesak anak-anaknya untuk menghabiskan lebih banyak waktu di luar, bahkan jutaan anak menghabiskan lebih banyak dan lebih banyak waktu asyik dengan media sosial.\r\n\r\nPada Juni 2017 dilaporkan, Facebook berhasil menjadi yang pertama dengan memiliki pengguna sebanyak 2 miliar. Peristiwa ini tercatat sebagai sejarah dengan pengguna aktif terbesar di media sosial (medsos).\r\n\r\n\"Kita membuat pencapaian dengan menghubungkan dunia, dan saat ini mari membawa dunia semakin dekat bersama. Sebuah kebanggaan untuk berada di dalam perjalanan ini bersama dengan Anda,\" pamer Zuck di akun resmi Facebook-nya.\r\n\r\nHingga kini, Facebook masih menjadi medsos teratas dibanding pesaingnya seperti Youtube dan Twitter, yang hanya memiliki angka di bawah 2 miliar.\r\n\r\nSedangkan medsos besutan Zuckerberg juga yakni Instagram, memiliki angka 700 juta pengguna dan berada di deretan ketiga.', '2017-12-19', 3, '9.jpg', 'image/jpeg', 66398),
(30, 'Man City Siapkan Kontrak Baru untuk De Bruyne dan Fernandinho', 'Manchester City tengah berusaha untuk membuat kontrak jangka panjang kepada salah satu gelandang serangnya, Kevin De Bruyne. De Bruyne masih memiliki kontrak hingga Juni 2021 bersama The Citizens â€“julukan Man City.\r\n\r\nKeinginan Man City untuk memberikan kontrak jangka panjang didasarkan pada penampilan De Bruyne yang terbilang apik di musim ini. Hingga pekan ke-18 di Liga Inggris, De Bruyne telah mencetak enam gol dan delapan assist.\r\n\r\nJika tarik ke belakang, pemain asal Belgia itu didatangkan Man City dari Wolfsburg pada 2015 dengan biaya transfer sebesar 55 juta poundsterling atau sekira Rp999 miliar. Dengan dana transfer sebesar itu, De Bruyne tercatat sebagai pemain termahal yang pernah didatangkan klub yang bermarkas di Etihad Stadium itu.\r\n\r\nMendengar rencana klubnya, De Bruyne menyambut dengan senang. Bahkan pemain berusia 26 tahun itu membeberkan keinginannya untuk tetap berseragam Manchester Biru dan tak ingin pergi ke tim lain.\r\n\r\nâ€œSaya sangat senang dan saya tidak punya keinginan untuk pergi ke tempat lain,â€ ujar De Bruyne, mengutip dari BBC, Selasa (19/12/2017).\r\n\r\nSelain De Bruyne, Man City juga berniat memberikan kontrak baru kepada gelandang bertahan miliknya, Fernandinho. Niat tersebut muncul karena pemain asal Brasil itu akan habis masa baktinya pada Juni 2018.\r\n\r\nDengan peran kedua tim itu, Man City kini telah mendapatkan hasil manis. Hingga pekan ke-18 Liga Inggris, Manchester Biru berhasil duduk di puncak klasemen sementara dengan koleksi 52 angka. Hasil itu didapatkan Man City dari 17 kemenangan dan satu raihan imbang.\r\n\r\nTak hanya di Liga Inggris, tim besutan Josep Guardiola itu juga mampu menunjukkan tajinya di level Eropa yakni Liga Champions. Man City memastikan satu tempat di babak 16 besar dengan status sebagai juara grup. Sayangnya di laga pamungkas kontra Shakhtar Donetsk, Man City menelan kekalahan dengan skor 1-2.', '2017-12-19', 0, '10.jpg', 'image/jpeg', 28170);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id_news`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_comment` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id_message` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id_news` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
