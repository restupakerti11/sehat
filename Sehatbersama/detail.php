<?php
include "header.php";
include "koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Artikel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
        background: lightcyan;
        color: black;
    }
    </style>
</head>
<body>
    <div class="container" style="margin-top:80px;" >
        <h3 class="text-center">ARTIKEL</h3>
    <?php
        $id = $_GET['detail']; // mengambil nilai dari variabel detail
        if(isset($_GET['detail'])) { 
        $query = "SELECT * FROM artikell WHERE id_artikel = '$id' ";
        $hasil = mysqli_query($con, $query);
        while($data = mysqli_fetch_array($hasil)) { ?>

        <h2><?php echo "" . $data["judul"]. "<br>"; ?></h2>
        <h5><?php echo "Penulis : " .$data["nama"]; ?></h5>
        <h5><?php echo "Kategori : " .$data["kategori"]; ?></h5>
        <p><?php echo "" .$data["isi"]. "<br>";  ?></p>
        <?php include 'komen.php'; ?>

    <?php } } ?>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </div> 
    <?php include "footer.php"; ?>
</body>
</html>