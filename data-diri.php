<?php
include ('conn.php'); 
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/style-form.css" />
        <!-- <link rel="stylesheet" href="css/style.css" /> -->
        <title>Form Data Diri</title>
    </head>
    <body>
    <div class="first-table">
    </div>
    <div class="first-table">
    <table style="border: 1px solid white">
            <tr>
                <th colspan="4"><h1>Untuk Tugas</h1></th>
                <br>
            </tr>
            <tr>
                <th>NPM</th>
                <th>NAMA</th>
                <th>ALAMAT</th>
                <th>JENIS KELAMIN</th>
            </tr>
            <tbody>
            <?php 
                  $query = "SELECT * FROM mhs";
                  $result = mysqli_query(connection(),$query);
                 ?>

                 <?php while($data = mysqli_fetch_array($result)): ?>
                  <tr>
                    <td><?php echo $data['npm'];  ?></td>
                    <td><?php echo $data['nama'];  ?></td>
                    <td><?php echo $data['alamat'];  ?></td>
                    <td><?php echo $data['jenis_kelamin'];  ?></td>
                    <td><a href="<?php echo "update.php?npm=".$data['npm']; ?>">Update</a>&nbsp;&nbsp;</td>
                    <td><a href="<?php echo "delete.php?npm=".$data['npm']; ?>"> Delete</a></td>
                    </tr>
                 <?php endwhile ?>
            </tbody>
    </table>
    </div>
    </body>
</html>