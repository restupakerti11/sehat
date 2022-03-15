<?php include "header.php"?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
    .mx-auto {
        width: 1000px
    }
    .card {
        margin-top: 80px;
        margin-bottom: 20px;
    }
    body {
        background: lightcyan;
        color: black;
    }
    </style>
</head>
    <div class="mx-auto">
        <div class="card">
                    <div class="card-header text-white bg-secondary" align="center">
                        <h3>Pesan Masuk</h3>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Kode Booking</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Isi Pesan</th>
                                    <th scope="col">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    include "koneksi.php";
                                    $sql2   = "SELECT * FROM hubungi_dokter order by id_chat desc";
                                    $q2     = mysqli_query($con,$sql2);
                                    $no   = 1;
                                    while($r2 = mysqli_fetch_array($q2)){
                                    ?>
                                <tr>
                                    <th scope="row"><?php echo $no++ ?></th>
                                    <td scope="row"><?php echo $r2['kode_booking']; ?></td>
                                    <td scope="row"><?php echo $r2['nama']; ?></td>
                                    <td scope="row"><?php echo $r2['isichat']; ?></td>
                                    <td class="text-center">
                                        <a href="balaspesan.php?id=<?php echo $r2['id_chat']?>"><button type="button" class="btn btn-info">Balas</button></a>
                                    </td>
                                </tr>
                                <?php } ?>                               
                            </tbody>
                            </thead>
                        </table>
                    </div>
                </div>
        </div>
    </div>
    <?php include "footer.php"; ?>                                            
</body>
</html>