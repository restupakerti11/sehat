<?php 
include "header.php";
include "koneksi.php";
error_reporting(0);

$nama = $_POST["nama"];
$namadok = $_POST["namadok"];
$isipesan = $_POST["isipesan"];

$sql = "insert into balaspesan (nama,namadok,isipesan) values ('$nama','$namadok','$isipesan')";
$hasil=mysqli_query($con,$sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balas Pesan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    .mx-auto {
        width: 900px
    }

    .card {
        margin-top: 100px;
        margin-bottom: 66px;
    }
    body {
        background: lightcyan;
        color: black;
    }
    </style>   
</head>
<body>
    <div class="mx-auto">
        <div class="card">
            <div class="card-body">
            <form action="" method="POST">
            <div class="mb-3">
                <label for="nama" class="form-label">Kepada</label>
                <input type="text" class="form-control" id="nama" name="nama" placeholder="Masukkan Nama">
            </div>
            <div class="mb-3">
                <label for="namadok" class="form-label">Nama Dokter</label>
                <input type="text" class="form-control" id="namadok" name="namadok" placeholder="Masukkan Nama">
            </div>
            <div class="mb-3">
                <label for="isipesan" class="form-label">Isi Pesan</label>
                <textarea class="form-control" id="isipesan" name="isipesan" rows="3"></textarea>
            </div>
            <div class="col-12">
                <input type="submit" name="kirim" value="kirim" class="btn btn-primary" />
            </div>
            </form>
            </div>
        </div>
    </div>
    <?php include "footer.php"; ?>
</body>
</html>