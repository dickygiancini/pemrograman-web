<?php
class database{
    var $dbServer = 'localhost';
    var $dbUser = 'root';
    var $dbPass = '';
    var $dbName = 'tugas8';
    var $koneksi = '';
    function __construct(){
        $this->koneksi = mysqli_connect($this->dbServer, $this->dbUser, $this->dbPass,$this->dbName);
		if (mysqli_connect_errno()){
			echo "Koneksi database gagal : " . mysqli_connect_error();
		}
    }    
    function tampil_data(){
        $data = mysqli_query($this->koneksi,"SELECT * FROM data_user");
            while($row = mysqli_fetch_array($data)){
                $hasil[] = $row;
            }
            return $hasil;
    }
}
?>