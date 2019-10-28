<?php
class database{
    var $dbServer = 'localhost';
    var $dbUser = 'root';
    var $dbPass = '';
    var $dbName = 'akademik';
    var $koneksi = '';
    var $npm = "17081010062";
    function __construct(){
        $this->koneksi = mysqli_connect($this->dbServer, $this->dbUser, $this->dbPass,$this->dbName);
		if (mysqli_connect_errno()){
			echo "Koneksi database gagal : " . mysqli_connect_error();
		}
    }
    function tampil_mhs(){
        $dataku = mysqli_query($this->koneksi,"SELECT * FROM mahasiswa WHERE npm='$this->npm'");
            while($datamhs = mysqli_fetch_array($dataku)){
                $result[] = $datamhs;
            }
            return $result;
        }
    
    function tampil_data(){
        $data = mysqli_query($this->koneksi,"SELECT mahasiswa.npm, mahasiswa.nama, mahasiswa.prodi, mata_kuliah.nama_mk, nilai.nilai, mata_kuliah.sks FROM mahasiswa, mata_kuliah, nilai WHERE mahasiswa.npm=nilai.npm AND mata_kuliah.kode_mk=nilai.kode_mk AND mahasiswa.npm='$this->npm'");
            while($row = mysqli_fetch_array($data)){
                $hasil[] = $row;
            }
            return $hasil;
    }
}
?>