<?php 

  include ('conn.php'); 
  //melakukan pengecekan apakah ada form yang dipost
  if ($_SERVER['REQUEST_METHOD'] === 'GET') {
      if (isset($_GET['npm'])) {
          //query SQL
          $npm_upd = $_GET['npm'];
          $query = "DELETE FROM mhs WHERE npm = '$npm_upd'"; 

          //eksekusi query
          $result = mysqli_query(connection(),$query);

          //redirect ke halaman lain
          header('Location: index.php');
      }  
  }
?>