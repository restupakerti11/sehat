<?php
include "header.php";
include "koneksi.php";
error_reporting(0);
$judul      = "";
$nama       = "";
$kategori   = "";
$isi        = "";
$sukses     = "";
$error      = "";

if(isset($_GET['op'])){ //op digunakan untuk menangkap variabel yg di url
    $op = $_GET['op'];
}else{
    $op = "";
}

if($op == 'delete'){ //delete artikel
    $id          = $_GET['id_artikel'];
    $sql1        = "delete from artikell where id_artikel = '$id'";
    $q1          = mysqli_query($con, $sql1);
    if($q1){
        $sukses = "Artikel berhasil dihapus";  
    }else{
        $error  = "Gagal menghapus artikel";
    }
}

if($op == 'edit'){ //edit artikel
    $id         = $_GET['id_artikel'];
    $sql1       = "select * from artikell where id_artikel = '$id'";
    $q1         = mysqli_query($con, $sql1);
    $r1         = mysqli_fetch_array($q1);
    $judul      = $r1['judul'];
    $nama       = $r1['nama'];
    $kategori   = $r1['kategori'];
    $isi        = $r1['isi'];

    if($judul == ''){
        $error = "Data tidak ditemukan";
    }
}

if(isset($_POST['submit'])){ //untuk create artikel
    $judul      = $_POST['judul'];
    $nama       = $_POST['nama'];
    $kategori   = $_POST['kategori'];
    $isi        = $_POST['isi'];

    if($judul && $nama && $kategori && $isi){
        if($op == 'edit'){ // untuk update artkel
            $sql1   = "update artikell set judul = '$judul',nama='$nama',kategori='$kategori',isi='$isi' where id_artikel = '$id'";
            $q1     = mysqli_query($con, $sql1);
            if($q1){
                $sukses = "Artikel berhasil di update";   
            }else{
                $error  = "Artikel Gagal diupdate";
            }
        }else{ //untuk insert data
            $sql1 = "insert into artikell (judul,nama,kategori,isi) values ('$judul','$nama','$kategori','$isi')";
            $q1   = mysqli_query($con, $sql1);
            if($q1){
                $sukses = "Berhasil membuat artikel";
            } else {
                $error  = "Gagal membuat artikel";
            }
        }        
    }else{
        $error ="Silahkan masukkan semua data";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artikel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    .mx-auto {
        width: 1000px
    }

    .card {
        margin-top: 85px;
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
            <div class="card-header">
                Edit Artikel
            </div>
            <div class="card-body">
                <?php
                if($error){
                ?>
                    <div class="alert alert-danger" role="alert">
                        <?php echo $error ?>
                    </div>
                <?php 
                    header("refresh:5;url=artikel.php"); //5detik
                }
                ?>
                <?php
                if($sukses){
                ?>
                    <div class="alert alert-success" role="alert">
                        <?php echo $sukses ?>
                    </div>
                <?php
                    header("refresh:5;url=artikel.php"); //jeda 5 detik
                }
                ?>
                <form action="" method="POST">
                    <div class="mb-3 row">
                        <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="judul" name="judul"
                                value="<?php echo $judul ?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="nama" class="col-sm-2 col-form-label">Nama Penulis</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $nama?>">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="kategori" class="col-sm-2 col-form-label">Kategori</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="kategori" id="kategori">
                                <option value="">-Kategori-</option>
                                <option value="lifestyle" <?php if($kategori == "lifestyle") echo "selected"?>>Lifestyle
                                </option>
                                <option value="covid-19" <?php if($kategori == "covid-19") echo "selected"?>>Covid-19
                                </option>
                                <option value="tips diet" <?php if($kategori == "tips diet") echo "selected"?>>Tips Diet
                                </option>
                                <option value="ibu & anak" <?php if($kategori == "ibu & anak") echo "selected"?>>Ibu &
                                    Anak</option>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="isi" class="col-sm-2 col-form-label">Isi</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="isi" name="isi" rows="10"><?php echo $isi ?></textarea>
                        </div>
                    </div>
                    <div class="col-12">
                        <input type="submit" name="submit" value="submit" class="btn btn-primary" />
                    </div>
                </form>
            </div>
        </div>

        <div class="card">
            <div class="card-header text-white bg-secondary">
                Data Artikel
            </div>
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Judul</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Kategori</th>
                            <th scope="col">Isi</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    <tbody>
                        <?php 
                            $sql2   = "select * from artikell order by id_artikel desc";
                            $q2     = mysqli_query($con,$sql2);
                            $urut   = 1;
                            while($r2 = mysqli_fetch_array($q2)){
                                $id         = $r2['id_artikel'];
                                $judul      = $r2['judul'];
                                $nama       = $r2['nama'];
                                $kategori   = $r2['kategori'];
                                $isi        = $r2['isi'];

                            ?>
                        <tr>
                            <th scope="row"><?php echo $urut++ ?></th>
                            <td scope="row"><?php echo $judul ?></td>
                            <td scope="row"><?php echo $nama ?></td>
                            <td scope="row"><?php echo $kategori ?></td>
                            <td scope="row"><?php echo $isi ?></td>
                            <td scope="row">
                                <a href="artikel.php?op=edit&id_artikel=<?php echo $id?>"><button type="button" class="btn btn-warning">Edit</button></a>
                                <a href="artikel.php?op=delete&id_artikel=<?php echo $id?>" onclick="return confirm('Apakah anda yakin ingin menghapus artikel ini?')"><button type="button" class="btn btn-danger">Delete</button></a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    <?php include "footer.php"; ?>
</body>
</html>