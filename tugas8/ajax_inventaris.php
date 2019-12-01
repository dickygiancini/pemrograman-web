<?php 
    include ('conn.php');
    include ('login.php');
    
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        if (isset($_GET['jenis'])) {
            //query SQL
            $jenis = $_GET['jenis'];
            $kondisi = $_GET['kondisi'];
            $kode_fakultas = $_GET['kode_fakultas'];

            if ($kode_fakultas == '0'){
                $query = "SELECT * FROM data_inv,fakultas WHERE data_inv.jenis='$jenis' AND data_inv.kondisi='$kondisi' AND data_inv.kode_fakultas=fakultas.kode_fakultas"; 
            }
            else {
                $query = "SELECT * FROM data_inv,fakultas WHERE data_inv.jenis='$jenis' AND data_inv.kondisi='$kondisi' AND data_inv.kode_fakultas='$kode_fakultas' AND data_inv.kode_fakultas=fakultas.kode_fakultas";
            }
  
            //eksekusi query
            $inventaris = mysqli_query($con,$query);
            echo "<table>";
            echo "<tr>";
                echo "<th>kode</th>";
                echo "<th>Jenis</th>";
                echo "<th>Fakultas</th>";
                echo "<th>Barang</th>";
                echo "<th>Kondisi</th>";
            echo "</tr>";
            while($data = mysqli_fetch_array($inventaris)):
              // echo "<option value='".$data['kode_inv']."'>".$data['jenis']."</option>";
              echo "<tr>";
                echo "<td>".$data['kode_inv']."</td>";
                echo "<td>".$data['jenis']."</td>";
                echo "<td>".$data['nm_fakultas']."</td>";
                echo "<td>".$data['barang']."</td>";
                echo "<td>".$data['kondisi']."</td>";
              echo "</tr>";
            endwhile;

            echo "</table>";
        }  
    }
