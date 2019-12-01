<?php
    //session_start();
    include ('login.php');
    if(!isAdmin()){
        header("location:dashboard.php");
    }
    include ('users.php');
    $db = new database();
    $data_user = $db->tampil_data();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Page</title>	
</head>
<body>
<table style="border: 1px solid black">
    <thead>
    <tr>
        <th>Nomor Pegawai</th>
        <th>Nama</th>
        <th>Kode Fakultas</th>
        <th>Username</th>
        <th>Password</th>
    </tr>            
    </thead>
    <tbody>
        <?php
            foreach($data_user as $row){
            ?>
            <tr>
                <td><?php echo $row['nopeg'];  ?></td>
                <td><?php echo $row['nama'];  ?></td>
                <td><?php echo $row['kode_fakultas'];  ?></td>
                <td><?php echo $row['username'];  ?></td>
                <td><?php echo $row['password'];  ?></td>
            </tr>
            <?php
            }
            ?>
    </tbody>
    </table>
</body>
</html>