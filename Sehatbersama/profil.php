<?php include "header.php"; ?>
<?php
include "koneksi.php";

$nama       = "";
$username   = "";
$email      = "";
$notelp      = "";
$spesialis  = "";

$sql   = "update artikell set nama = '$nama',username='$username',email='$email',spesialis='$spesialis' where id_dokter = '$id'"; 
$q1    = mysqli_query($con, $sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    .mx-auto {
        width: 800px
    }

    .card {
        margin-top: 60px;
        margin-bottom : 20px;
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
                <div class="card-header" align="center">
                    <h3>Profil</h3>
                </div>
                <div class="card-body">
                    <form action="" method="POST">
                        <div class="mb-3 row">
                            <label for="nama" class="col-sm-2 col-form-label">Nama Lengkap</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="nama" name="nama"
                                    value="<?php echo $nama ?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="username" class="col-sm-2 col-form-label">Username</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="username" name="nama" value="<?php echo $username?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="email" name="email" value="<?php echo $email?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="notelp" class="col-sm-2 col-form-label">Nomor Telepon</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="notlp" name="notelp" value="<?php echo $notelp?>">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="spesialis" class="col-sm-2 col-form-label">Spesialis</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="kategori" id="kategori">
                                    <option value="">-Kategori-</option>
                                    <option value="lifestyle" <?php if($spesialis == "jantung") echo "selected"?>>Jantung
                                    </option>
                                    <option value="covid-19" <?php if($spesialis == "penyakit dalam") echo "selected"?>>Penyakit Dalam
                                    </option>
                                    <option value="tips diet" <?php if($spesialis == "saraf") echo "selected"?>>Saraf</option>
                                    <option value="ibu & anak" <?php if($spesialis == "anak") echo "selected"?>>Anak</option>
                                    <option value="lifestyle" <?php if($spesialis == "kandungan") echo "selected"?>>Kandungan
                                    </option>
                                    <option value="lifestyle" <?php if($spesialis == "mata") echo "selected"?>>Mata
                                    </option>
                                    <option value="lifestyle" <?php if($spesialis == "kulit & kelamin") echo "selected"?>>Kulit & Kelamin
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-12">
                            <input type="submit" name="submit" value="update" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
    </div>
            <?php include "footer.php"; ?>
</body>
</html>