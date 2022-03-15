<?php include "header.php";?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Komen</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
        background: lightcyan;
        color: black;
    }
    </style>
</head>
<body>
    <?php
        error_reporting(0);
        include "koneksi.php";
        $id       = $_GET['detail'];
        $query    = "SELECT * FROM artikelkomen WHERE id_artikel = '$id' ";
        $hasil    = mysqli_query($con, $query);
        while($data=mysqli_fetch_array($hasil))  { ?>

        <p><?php echo $data['nama']; ?></p>
        <p><?php echo $data['isi_komen']; ?></p>

    <?php } ?>

    <?php echo "Komentar"; ?> 
    <br>
    <br>
    <form method="POST" style="background: lightcyan;">
        <input type="text" name="nama" placeholder="Masukkan Nama"> 
        <br>
        <br>
        <textarea name="isi" rows="10" placeholder="Masukkan Komentar Anda"></textarea> <br>
        <input type="submit" name="btnkomen">
    </form>
    <?php
        if(isset($_POST['btnkomen'])) {
            $name = $_POST['nama'];
            $isi = $_POST['isi'];

            $query = "INSERT INTO artikelkomen VALUES ('', '$id', '$name', '$isi' ) ";
            $hasil = mysqli_query($con, $query);
            echo "Sukses";
            echo "<meta http-equiv='refresh' content='2;url=detail.php?detail=".$id."'>";
        }
    ?>
    </div>
</body>
</html>