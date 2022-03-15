-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 01:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sehatbersama`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(25) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_dokter` int(25) NOT NULL,
  `id_rs` int(25) NOT NULL,
  `id_obat` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `artikelkomen`
--

CREATE TABLE `artikelkomen` (
  `id_komen` int(10) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi_komen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikelkomen`
--

INSERT INTO `artikelkomen` (`id_komen`, `id_artikel`, `nama`, `isi_komen`) VALUES
(7, 1, 'yoland', 'komen'),
(8, 1, 'yoland anggreyani', 'komen2');

-- --------------------------------------------------------

--
-- Table structure for table `artikell`
--

CREATE TABLE `artikell` (
  `id_artikel` int(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(32) NOT NULL,
  `isi` text NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `id_admin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikell`
--

INSERT INTO `artikell` (`id_artikel`, `judul`, `nama`, `kategori`, `isi`, `id_dokter`, `id_admin`) VALUES
(1, '10 Pola Hidup Sehat', 'yoland anggreyani ', 'lifestyle', '10 Tips Hidup Sehat \r\n1. Rutin berolahraga \r\n2. Makan makanan bergizi \r\n3. Istirahat yang cukup \r\n4. Hindari stress \r\n5. Banyak minum air putih \r\n6. Tidak merokok \r\n7. Mengurangi konsumsi gula \r\n8. Menjaga kebersihan \r\n9. Makan buah-buahan \r\n10. Konsumsi vitamin', 0, 0),
(2, 'Tetap Waspada, Gelombang 3 COVID-19 Bisa Menyerang Indonesia Kapan Saja!', 'Restu Pakerti', 'covid-19', 'Kasus di Indonesia sudah jauh menurun sejak lonjakan kasus pada bulan Juli 2021 lalu. Sekarang, berbagai aturan PPKM mulai longgar. Jalanan mulai penuh, macet jadi suatu hal yang wajar kembali. Hmm, apakah pandemi sudah usai sepenuhnya?\r\n\r\nOktober 2021, lonjakan kasus melanda dunia\r\n\r\nBulan Oktober 2021, sementara Indonesia terlena dengan terus menurunnya tren kasus harian, negara-negara di berbagai belahan dunia tengah mengalami lonjakan kasus mendadak. Tak perlu jauh-jauh, tetangga Indonesia contohnya. Ya, akibat ledakan infeksi virus korona di Singapura pada awal Oktober lalu, CDC memasukkan negara singa ini ke “daftar merah” tujuan perjalanan. \r\n\r\nKenaikan kasus yang terus menerus terjadi lagi semenjak adanya pelonggaran pembatasan pengoperasian bisnis secara penuh pada bulan Juli—Agustus. Dilansir dari CNBC, kenaikan kasus ini disebabkan oleh varian Delta. \r\n\r\nBergeser ke Asia Tengah, pada pertengahan Oktober lalu, terdapat sekitar 34.000 kasus positif COVID-19 harian baru di Rusia. Angka kematian akibat COVID-19 pun sempat menyentuh angka 1.000. Di Tiongkok, gelombang baru COVID-19 varian Delta juga telah menyebar di 11 provinsi dan bahkan lebih besar dibandingkan dengan yang terjadi di Provinsi Nanjing pada Juli 2021.\r\n\r\nSekali lagi, Eropa menjadi “pusat pandemi” COVID-19\r\n\r\nDikutip dari BBC, dalam konferensi pers, kepala WHO Eropa, Hans Kulge, mengatakan bahwa dapat diprediksi kematian dengan jumlah setengah juta lebih banyak di Eropa dibandingkan bulan Februari. Hal ini diduga disebabkan kurangnya vaksinasi. \r\n\r\nSelama beberapa bulan terakhir, di seluruh benua, vaksinasi memang tengah melambat. Persentase masyarakat yang mendapatkan dosis ganda pun masih rendah. Diduga, longgarnya praktik kesehatan meningkatkan infeksi di wilayah Eropa WHO, yakni di 53 negara, termasuk negara-negara di Asia Tengah. WHO telah mencatat 1,4 juta kematian di seluruh wilayah tersebut.\r\n\r\nPrediksi gelombang tiga di Indonesia\r\n\r\nBukan tidak mungkin bagi Indonesia juga mengalami gelombang ketiga. Wakil kepala petugas medis Inggris mengatakan, terlalu banyak orang yang percaya bahwa pandemi telah berakhir. Inilah salah satu faktor yang bisa memicu timbulnya gelombang ketiga.\r\n\r\nSelain itu, menurut epidemiolog dari Griffith University, gelombang ketiga COVID-19 dapat dipicu beberapa hal, seperti tingginya mobilitas masyarakat, belum meratanya vaksinasi, banyaknya pelonggaran dari aturan serta protocol kesehatan, serta adanya potensi mutasi varian virus korona. Lonjakan kasus ini diprediksi akan terjadi di akhir tahun 2021 dan awal tahun 2022.\r\n\r\nSaat ini kita memang hidup di era new normal. Jadi, jangan sampai kendor prokes, ya!\r\nMeski keadaan sudah mulai membaik, kita tetap tidak boleh lengah. Jangan bosan-bosan untuk terus menerapkan protokol kesehatan saat pergi keluar rumah dan bertemu dengan orang-orang yang tidak tinggal serumah dengan kita. Mungkin mereka akan berteriak ‘lebay’ dan ‘penakut’ dengan heran kepadamu yang masih menjalankan prokes dengan ketat hingga saat ini. Namun, mencegah lebih baik daripada mengobati, bukan?\r\n\r\nTaat prokes bukan cuma tentang kesehatanmu saja, tapi juga keluarga, teman-teman, dan orang-orang di sekitarmu. Lebih dari itu, taat prokes menjadi salah satu cara sederhana untukmu membantu, mengucapkan terima kasih, dan mengapresiasi para nakes dan mereka yang telah gugur dalam perang melawan pandemi ini.', 0, 0),
(5, 'Cara Diet yang Aman untuk Turunkan Berat Badan, Tanpa Bahayakan Kesehatan', 'dr. Dika Kurniawan', 'tips diet', 'Pada dasarnya, kelebihan berat badan terjadi akibat terlalu banyak kalori yang masuk ke dalam tubuh. Sementara kalori yang dikeluarkan tidak sebanding dengan yang masuk, sehingga kalori tersebut menumpuk dan berubah menjadi lemak.\r\n\r\nPada akhirnya lemaklah yang membuat perut Anda buncit dan ukuran paha serta lengan bertambah besar. Pada dasarnya, kelebihan berat badan terjadi akibat terlalu banyak kalori yang masuk ke dalam tubuh. Sementara kalori yang dikeluarkan tidak sebanding dengan yang masuk, sehingga kalori tersebut menumpuk dan berubah menjadi lemak. Pada akhirnya lemaklah yang membuat perut Anda buncit dan ukuran paha serta lengan bertambah besar.\r\n\r\nMeski Anda sangat ingin mendapatkan berat badan yang ideal, sebaiknya Anda pilih-pilih diet yang tidak membahayakan kesehatan. Tidak sulit kok untuk menerapkan diet sehat alami, sebab pada dasarnya semua orang – mau yang kelebihan berat badan atau tidak – harus melakukan diet ini agar terhindar dari berbagai penyakit kronis di kemudian. Lalu, bagaimana cara diet sehat alami?\r\n\r\n1. Pilih makanan yang tepat, jangan melewatkan waktu makan\r\nCara diet sehat alami yang pertama adalah dengan memilih makanan yang Anda konsumsi sehari-hari. Ya, pemilihan asupan makanan yang tepat memegang peran penting untuk kesuksesan program diet Anda.\r\n\r\nCara diet sehat ini dapat Anda lakukan dengan menghindari makanan yang berlemak serta mengandung gula tinggi. Makanan dengan gula tinggi memiliki nilai kalori yang tinggi pula sehingga buruk bagi tubuh. Selain itu, hindari pula makanan kemasan serta gorengan karena makanan seperti itu hanya akan menggagalkan diet sehat Anda saja.\r\n\r\nSebaliknya, kalau Anda mau menjalani diet sehat alami, perbanyak konsumsi buah dan sayur. Tetapi, bukan berarti Anda menghindari makan nasi atau makan lauk-pauk ya. Semua makanan itu tetap kok diperlukan bagi tubuh, namun Anda harus mengatur porsinya dengan baik.\r\n\r\n2. Atur porsinya sesuai dengan kebutuhan\r\nSetelah memilih makanan yang tepat, maka cara diet sehat selanjutnya adalah mengatur porsi makanan tersebut. Anda harus makan sesuai dengan kebutuhan kalori per hari. Tentu, ini tidak bisa sembarangan menghitungnya.\r\n\r\nKalau Anda kesulitan Anda bisa konsultasikan hal ini dengan ahli gizi. Namun, bagi Anda yang memiliki berat badan, biasanya akan diperbolehkan untuk mengonsumsi makanan sebanyak 1500 kalori.\r\n\r\nUntuk menerapkan cara diet sehat, ingatlah selalu bahwa dalam satu kali makan Anda harus menyeimbangkan semua zat gizi yang diperlukan tubuh. Anda dapat menyesuaikannya dengan prinsip gizi seimbang, yaitu ada karbohidrat, protein, lemak, vitamin, dan mineral.\r\n\r\nJadi, dalam satu kali makan, Anda harus mengonsumsi makanan pokok, lauk hewani, lauk nabati, sayur satu mangkuk, serta buah sebagai selingan. Anda bisa menerapkan porsi sesuai dengan ilustrasi gizi seimbang berikut ini.\r\n\r\n3. Ganti gula dengan pemanis yang lebih sehat\r\nBanyak orang sering meremehkan cara diet sehat satu ini. Padahal, cara diet sehat dengan mengganti gula dengan pemanis yang lebih sehat adalah salah satu ampuh untuk menurunkan berat badan Anda.\r\n\r\nSeberapa sering Anda menambahkan gula dalam makanan atau minuman Anda? Banyak orang yang tidak tahu seberapa banyak ia mengonsumsi gula dalam satu hari. Ingat, gula dan makanan manis adalah makanan penyebab berat badan berlebih, dan tentu saja buruk bagi kadar gula darah Anda.\r\n\r\nMulai sekarang, Anda sebaiknya mengganti gula dengan pemanis yang memiliki kalori lebih rendah – tetapi tak kalah manisnya dengan gula. Sekarang ini telah banyak pemanis buatan yang memiliki kalori yang rendah, aman bagi kadar gula darah, dan tak bikin timbangan berat badan melonjak.\r\n\r\n4. Jadikan olahraga sebagai kebutuhan\r\nOlahraga adalah cara diet sehat alami yang paling mudah untuk Anda lakukan. Pasalnya diet sehat alami tidak akan optimal jika tak melakukan olahraga. Oleh sebab itu, mulai sekarang jadikan olahraga sebagai kebutuhan, bukan lagi kewajiban.\r\n\r\nPasalnya tubuh Anda perlu mengeluarkan dan membakar kalori-kalori yang masuk ke dalam tubuh. Kalau bukan dengan olahraga rutin, dengan cara apa lagi tumpukan kalori – yang berbentuk lemak – itu bisa dihilangkan?\r\n\r\nMulailah membiasakan diri untuk olahraga secara rutin setiap hari, setidaknya 30 menit. Untuk memulainya, Anda bisa kok berjalan-jalan santai atau jogging selama 30 menit di area rumah.\r\n\r\n5. Menerapkan pola hidup sehat\r\nSetelah menerapkan berbagai cara diet sehat seperti yang sudah disebutkan di atas, alangkah baiknya jika Anda juga menerapkan pola hidup yang baik secara keseluruhan. Apa saja pola hidup yang baik itu?\r\n\r\nIni dapat Anda lakukan dengan berbagai cara, misalnya tidur dengan cukup dan hindari begadang. Lalu, hindari mengonsumsi alkohol yang berlebihan dan jangan merokok. Hal-hal tersebut akan membantu diet sehat alami Anda berjalan dengan mudah dan berhasil.', 0, 0),
(6, 'Waspada, Kasus Pertama COVID-19 Varian Omicron Telah Terdeteksi di Indonesia!', 'Yoland Anggreyani Kendek', 'covid-19', 'Pada 16 Desember lalu, Menteri Kesehatan, Budi Gunadi Sadikin, mengumumkan terkonfirmasinya kasus pertama COVID-19 varian Omicron di Indonesia. Varian ini menginfeksi seorang petugas kebersihan yang bekerja di Rumah Sakit Darurat COVID-19 (RSDC) Wisma Atlet Kemayoran, Jakarta. Bagaimana perkembangan virus korona varian terbaru yang pertama kali ditemukan di Afrika Selatan tersebut?\r\n\r\nBerawal dari pengecekan rutin di Wisma Atlet\r\n\r\nDari hasil pengecekan sampel rutin petugas kebersihan di Wisma Atlet tanggal 8 Desember, terdapat tiga pertugas yang terkonfirmasi positif COVID-19. Setelah sampel diperiksa lebih jauh menggunakan metode khusus S-gene target failure (SGTF) di Badan Penelitian dan Pengembangan Kesehatan, satu dari tiga sampel tersebut rupanya terkonfirmasi positif varian B.1.1.529 atau Omicron. Namun, petugas kebersihan berinisial N yang terinfeksi varian Omicron tersebut tidak mengalami gejala apa pun, baik batuk ataupun emam, apalagi riwayat ke luar negeri. Sebagai dampaknya, RSDC Wisma Atlet pun di-lockdown selama 7 hari.\r\n\r\nDari lima kasus kemungkinan lainnya, dua orang positif terinfeksi Omicron\r\n\r\nSelain kasus pertama, ada lima pasien lain yang juga diduga terpapar virus korona varian B.1.1.529. Mereka adalah dua orang WNI yang datang dari Amerika dan Inggris serta tiga orang WNA dari Tiongkok yang berkunjung ke Manado. Pada 18 Desember, juru Bicara Vaksinasi COVID-19 Kementerian Kesehatan, dr. Siti Nadia Tarmizi, menyatakan dua orang WNI tersebut tertular varian Omicron setelah menjalani karantina selama 10 hari di Wisma Atlet.\r\n\r\nTentang Omicron dan kasus kematian pertama akibat varian tersebut di Inggris\r\n\r\nVirus penyebab COVID-19 varian B.1.1.529 atau yang dikenal dengan nama Omicron telah ditetapkan oleh World Health Organization (WHO) sebagai variant of concern atau VoC. Artinya, varian virus korona ini dapat menyebabkan peningkatan penularan dan kematian, bahkan memengaruhi efektivitas vaksin COVID-19. Dilansir dari Pusat Pengendalian dan Pencegahan Penyakit Amerika Serikat (CDC), Varian ini pertama kali terdeteksi pada spesimen yang dikumpulkan pada 11 November 2021 di Botswana dan pada 14 November 2021 di Afrika Selatan.', 0, 0),
(10, 'Kekeliruan yang Mesti Dihindari di Balik Anjuran Menyikat Gigi Setelah Makan', 'dr. jessica sarii', 'lifestyle', 'Jakarta, Sikat gigi setelah makan, terutama makan pagi alias sarapan memang penting. Namun, dalam menerapkan kegiatan ini jangan sampai keliru ya! Sebab, menyikat gigi setelah makan tak dilakukan segera setelah makan.\r\n\r\nDiungkapkan drg Roseita Dewi dari Fakultas Kedokteran Gigi Universitas Indonesia (FKG UI), prinsipnya, menyikat gigi harus dilakukan pada saat dan dengan cara yang tepat. drg Ita, begitu ia akrab disapa, menekankan bahwa menyikat gigi sebaiknya tidak dilakukan segera begitu selesai makan, terutama setelah makan makanan dengan kadar gula tinggi atau makanan yang asam.\r\n\r\n“Menyikat gigi setelah makan penting untuk membuang sisa makanan yang masih menempel pada permukaan gigi, tetapi sebaiknya tidak dilakukan langsung setelah makan,” tegasnya saat berbincang dengan detikHealth baru-baru ini.\r\n\r\nSebab, menyikat gigi setelah makan dapat mengikis struktur gigi terluar (enamel gigi). Apalagi bila makanan yang dikonsumsi sudah mengandung asam seperti minuman berkarbonasi, cuka, dan kuah pempek. drg Ita menyarankan setelah makan ada baiknya berkumur dengan air putih.\r\n\r\nTujuannya, untuk menetralkan perubahan pH yang ada di dalam mulut, mengingat suasana asam akan melemahkan struktur gigi. Setelah makan, terjadi proses fermentasi yang menyebabkan penurunan pH dengan cepat dalam waktu 2-5 menit dan akan bertahan cukup lama sekitar 16-21 menit.\r\n\r\n“Lalu pH akan kembali normal dalam waktu 1 jam. Untuk itu jika hendak sikat gigi setelah makan baiknya beri jeda satu jam setelah makan,” tutur drg Ita.\r\n\r\nSumber : health.detik.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `balaspesan`
--

CREATE TABLE `balaspesan` (
  `id_pesan` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `namadok` varchar(100) NOT NULL,
  `isipesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balaspesan`
--

INSERT INTO `balaspesan` (`id_pesan`, `nama`, `namadok`, `isipesan`) VALUES
(0, 'Prawita Indah', 'dr. Jessica Saris', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `cari_obat`
--

CREATE TABLE `cari_obat` (
  `id_obat` int(25) NOT NULL,
  `nama_obat` varchar(35) NOT NULL,
  `jenis_obat` varchar(20) NOT NULL,
  `jumlah_obat` int(20) NOT NULL,
  `id_dokter` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notelp` int(12) NOT NULL,
  `spesialis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `username`, `email`, `notelp`, `spesialis`) VALUES
(1, 'dr. Kevin Julio', 'kevin', 'kevin@gmail.com', 81345678, 'Jantung');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi_dokter`
--

CREATE TABLE `hubungi_dokter` (
  `id_chat` int(10) NOT NULL,
  `kode_booking` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isichat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hubungi_dokter`
--

INSERT INTO `hubungi_dokter` (`id_chat`, `kode_booking`, `nama`, `isichat`) VALUES
(1, 12345, 'Yoland Anggereyani Kendek', 'Halo dok!\r\nSaya bertanya kenapa setiap tengah malam saya merasakan sesak nafas dan berlangsung selama 1-2 jam?'),
(2, 4879, 'Nurul Amaliah', 'Selamat pagi dok!\r\nsaya mengalami sakit perut yng tak kunjung sembu selama 2 hari hari terakhir ini. kapan saya harus datang mengecek ke dokter? atau apakah dokter ada saran obat untuk saya?'),
(3, 1347, 'Kevin Julio', 'Halo dok! \r\nBelakangan ini saya tidak dapat mencium bau apapun, apakah ini hanya flu biasa atau merupakan gejala covid-19?'),
(4, 89756, 'Prawita Indah', 'Halo dok!\r\n3 hari terakhir ini saya mengalami demam, batuk,sesak nafas, dan kehilangan rasa penciuman. kapan saya harus datang ke rumah sakit dok?');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_covid`
--

CREATE TABLE `informasi_covid` (
  `kode_informasi` int(5) NOT NULL,
  `kode_artikel` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kunjungi_rs`
--

CREATE TABLE `kunjungi_rs` (
  `id_rs` int(25) NOT NULL,
  `nama_rs` varchar(35) NOT NULL,
  `tlp_rs` int(20) NOT NULL,
  `alamat_rs` varchar(50) NOT NULL,
  `id_pasien` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(10) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ttl_pasien` date NOT NULL,
  `tlp_pasien` int(25) NOT NULL,
  `email_pasien` varchar(25) NOT NULL,
  `id_obat` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `kode_riwayat` int(25) NOT NULL,
  `id_dokter` int(25) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `riwayat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes_covid`
--

CREATE TABLE `tes_covid` (
  `username` varchar(30) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(8, '', 'yoland', 'yolandanggreyani@gmail.com', '$2y$10$b.eecLptvetrup0F.BmMF.saV49jyEkec3TNlxzg/nsbdlsd7VhU6'),
(9, '', 'yoland', 'yolandanggreyani@gmail.com', '$2y$10$cpqRY1CULJmsHGQC16tsmeTMFGKJc42ANU./OWdbHLzcO5PnUCfKi'),
(10, '', 'yolandd', 'anggreyaniyoland@gmail.com', '$2y$10$UPZEFVzn3TOyFeKpFn9EsO4c0z3rE3WhNV7j0C.I3L5vQ5MxZ.fUa');

-- --------------------------------------------------------

--
-- Table structure for table `vaksinasi`
--

CREATE TABLE `vaksinasi` (
  `username` varchar(10) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_rs` (`id_rs`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `artikelkomen`
--
ALTER TABLE `artikelkomen`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `artikell`
--
ALTER TABLE `artikell`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `balaspesan`
--
ALTER TABLE `balaspesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `cari_obat`
--
ALTER TABLE `cari_obat`
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `hubungi_dokter`
--
ALTER TABLE `hubungi_dokter`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indexes for table `informasi_covid`
--
ALTER TABLE `informasi_covid`
  ADD PRIMARY KEY (`kode_informasi`),
  ADD KEY `kode_artikel` (`kode_artikel`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kunjungi_rs`
--
ALTER TABLE `kunjungi_rs`
  ADD PRIMARY KEY (`id_rs`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`kode_riwayat`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `tes_covid`
--
ALTER TABLE `tes_covid`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaksinasi`
--
ALTER TABLE `vaksinasi`
  ADD KEY `id_pasien` (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikelkomen`
--
ALTER TABLE `artikelkomen`
  MODIFY `id_komen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artikell`
--
ALTER TABLE `artikell`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hubungi_dokter`
--
ALTER TABLE `hubungi_dokter`
  MODIFY `id_chat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `informasi_covid`
--
ALTER TABLE `informasi_covid`
  MODIFY `kode_informasi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `cari_obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`id_rs`) REFERENCES `kunjungi_rs` (`id_rs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_ibfk_4` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cari_obat`
--
ALTER TABLE `cari_obat`
  ADD CONSTRAINT `cari_obat_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informasi_covid`
--
ALTER TABLE `informasi_covid`
  ADD CONSTRAINT `informasi_covid_ibfk_1` FOREIGN KEY (`kode_artikel`) REFERENCES `artikel` (`id_artikel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `informasi_covid_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kunjungi_rs`
--
ALTER TABLE `kunjungi_rs`
  ADD CONSTRAINT `kunjungi_rs_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `cari_obat` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pasien_ibfk_2` FOREIGN KEY (`username`) REFERENCES `reference_vaksin` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tes_covid`
--
ALTER TABLE `tes_covid`
  ADD CONSTRAINT `tes_covid_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE;

--
-- Constraints for table `vaksinasi`
--
ALTER TABLE `vaksinasi`
  ADD CONSTRAINT `vaksinasi_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
