<?php
include('conn.php'); 
$status = '';
$result = '';

$npm = "";
$nama = "";
$jenis_kelamin = "";
$alamat = "";

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['npm'])) {
        //query SQL
        $npm_upd = $_GET['npm'];
        $query = "SELECT * FROM mhs WHERE npm = '$npm_upd'"; 

        //eksekusi query
        $result = mysqli_query(connection(),$query);
        $data = mysqli_fetch_array($result);

        $npm = $data['npm'];
        $nama = $data['nama'];
        $alamat = $data['alamat'];
        $jenis_kelamin = $data['jenis_kelamin'];
    }  
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $npm = $_POST['npm'];
    $nama = $_POST['nama'];
    $jenis_kelamin = $_POST['alamat'];
    $alamat = $_POST['jenis_kelamin'];

    $sql = "UPDATE mhs SET nama='$nama', jenis_kelamin='$jenis_kelamin', alamat='$alamat' WHERE npm='$npm'";

    $result = mysqli_query(connection(),$sql);
    if ($result) {
      $status = 'ok';
    }
    else{
      $status = 'err';
    }

    header('Location: index.php?status='.$status);
}
?>

<?php 
    if ($status=='ok') {
    echo '<br><br><div class="alert alert-success" role="alert">Berhasil Disimpan</div>';
    }
    elseif($status=='err'){
    echo '<br><br><div class="alert alert-danger" role="alert">Gagal</div>';
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!-- <link rel="stylesheet" href="css/style-form.css" /> -->
        <link rel="stylesheet" href="css/style.css" />
        <title>Form Update Data Diri</title>
    </head>
<body>
    <div class="register-form">
        <h1>Masukkan Biodata Anda</h1>
          <form action="update.php" method="POST">
            <div class="npm">
            <label>NPM : </label> 
            <input type="text" name="npm" placeholder="Masukkan NPM Anda" value="<?php echo $npm;  ?>" required="required" readonly>
            <br>
            </div>
            <div class="name">
            <label>Nama : </label> 
            <input type="text" name="nama" placeholder="Masukkan Nama Anda" value="<?php echo $nama;  ?>" required="required">
            <br>
            </div>
            <div class="alamat">
            <label>Alamat : </label> 
            <input type="text" name="addr" placeholder="Masukkan Alamat Anda" value="<?php echo $alamat;  ?>">
            <br>
            </div>
            <div class="jumlah">
            <label>Jenis Kelamin : </label> 
            <input type="text" name="jenis_kelamin" placeholder="Masukkan Jenis Kelamin" value="<?php echo $jenis_kelamin;  ?>">
            <br>
            </div>
            <button type="submit" class="button">Simpan</button>
          </form>
    </div>
</body>
</html>