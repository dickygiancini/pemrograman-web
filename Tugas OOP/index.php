<?php
include ('conn.php');
$db = new database();
$data_mhs = $db->tampil_data();
$show_mhs = $db->tampil_mhs();
$sks = 0;
$ips = 0;
?>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <!-- <meta charset="utf-8"> -->
        <title>DETAIL MAHASISWA</title>
    </head>

    <body>
    <div class="row">
        <div class="col s12 m4 l8">
            <div class="card purple darken-4">
            <div class="card-content white-text">
            <div  class="center-align">
            <span class="card-title">TRANSKRIP NILAI</span>
            </div>
            <?php
                foreach($show_mhs as $datamhs){
                ?>
                <tr>
                    <td><?php echo "<p>NPM : ".$datamhs['npm']."</p>";  ?></td>
                    <td><?php echo "<p>NAMA : ".$datamhs['nama']."</p>";  ?></td>
                    <td><?php echo "<p>Program Studi : ".$datamhs['prodi']."</p>";  ?></td>
                    <td><?php echo "<p>Fakultas : ".$datamhs['fakultas']."</p>";  ?></td>
                </tr>
                <?php 
                    }
                ?>
            </div>
            </div>
            <!-- <h2>TRANSKRIP NILAI</h2> -->
            <?php
                // foreach($show_mhs as $datamhs){
                ?>
                <!-- <tr>
                    <td><?php //echo "<p>NPM : ".$datamhs['npm']."</p>";  ?></td>
                    <td><?php //echo "<p>NAMA : ".$datamhs['nama']."</p>";  ?></td>
                    <td><?php //echo "<p>Program Studi : ".$datamhs['prodi']."</p>";  ?></td>
                    <td><?php //echo "<p>Fakultas : ".$datamhs['fakultas']."</p>";  ?></td>
                </tr> -->
                <?php 
                    // }
                ?>
        </div>
            <div class="col s12 m4 l8">
            <table style="border: 1px solid black" class="responsive-table">            
            <thead>
            <tr class="card-panel purple darken-4">
                <th class="white-text">NPM</th>
                <th class="white-text">NAMA</th>
                <th class="white-text">Prodi</th>
                <th class="white-text">Mata Kuliah</th>
                <th class="white-text">Nilai</th>
            </tr>            
            </thead>
            <tbody>
            <?php
                foreach($data_mhs as $row){
                ?>
                <tr>
                    <td><?php echo $row['npm'];  ?></td>
                    <td><?php echo $row['nama'];  ?></td>
                    <td><?php echo $row['prodi'];  ?></td>
                    <td><?php echo $row['nama_mk'];  ?></td>
                    <td><?php echo $row['nilai'];  ?></td>
                    </tr>
                    <?php
                        $sks += (int)$row['sks'];
                        switch ($row['nilai']) {
                            case 'A':
                                $nilai = 4;
                                break;
                            case 'B':
                                $nilai = 3;
                                break;
                            case 'C':
                                $nilai = 2;
                                break;
                            case 'D':
                                $nilai = 1;
                                break;
                            case 'E':
                                $nilai = 0;
                                break;
                        }
                        $ips += $nilai*(int)$row['sks'];
                    }
                    ?>
                    </tbody>
                    </table>
                <?php 
                    echo "<p>Nilai :".$ips." </p>"; 
                    echo "<p>SKS :".$sks." </p>"; 
                    echo "<p>IPS : ".$ips/$sks."</p>";
                ?>
                </div>
                
            </div>
        </div>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>